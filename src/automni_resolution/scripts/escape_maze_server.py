#! /usr/bin/env python3

import rospy
import numpy as np
import actionlib
from sensor_msgs.msg import LaserScan
from nav_msgs.msg import Odometry
import automni_resolution.msg
from geometry_msgs.msg import Twist

from geometry_msgs.msg import Point
from std_msgs.msg import Float32
from move_base_msgs.msg import MoveBaseActionGoal
import math

class escape_maze_Action(object):
    # create messages that are used to publish feedback/result
    _feedback = automni_resolution.msg.mazeActionFeedback()
    _result = automni_resolution.msg.mazeActionActionResult()

    def __init__(self, name):
        self._action_name = name
        self._as = actionlib.SimpleActionServer(self._action_name, automni_resolution.msg.mazeActionAction, execute_cb=self.execute_cb, auto_start = False)
        self.laser_sub = rospy.Subscriber("/base_scan", LaserScan, self.laser_callback)
        self.cmd_vel_pub = rospy.Publisher("/cmd_vel", Twist, queue_size=1)
        self.send_goal = rospy.Publisher("/move_base/goal", MoveBaseActionGoal, queue_size=1)
        self._mved_distance = Float32()
        self._mved_distance.data = 0.0
        self.find_first_wall = True
        self.get_init_position()
        self._as.start()


    def get_init_position(self):

        data_odom = None
        while data_odom is None:
            try:
                data_odom = rospy.wait_for_message("/odom", Odometry, timeout=1)
            except:
                rospy.loginfo("Current odom not ready yet, retrying for setting up init pose")
        
        self._current_position = Point()
        self._current_position.x = data_odom.pose.pose.position.x
        self._current_position.y = data_odom.pose.pose.position.y
        self._current_position.z = data_odom.pose.pose.position.z

    def laser_callback(self, data):
        self.laser_data = data

    def execute_cb(self, goal):

        r = rospy.Rate(1)

        if goal.technique == "escape_for_left_side":
            rospy.loginfo("escape_for_left_side")
            distance = 5
            col_distance = 3

            while True:
                data_odom = rospy.wait_for_message("/odom", Odometry, timeout=1)

                if data_odom.pose.pose.position.y <= 47:
                        
                    wall_at_left = np.min(self.laser_data.ranges[875:880])
                    wall_at_front = np.min(self.laser_data.ranges[540:550])
                    self.laser_data = rospy.wait_for_message("base_scan", LaserScan)

                    if self.find_first_wall:
                        self.start_wall_move()
                        if wall_at_front <= 5:
                            self.find_first_wall = False
                    
                    else:
                        if wall_at_left <= distance and wall_at_front>=distance and wall_at_left >= col_distance:
                            self.follow_foward_wall()
                        
                        elif wall_at_front<=distance:
                            self.around_corner()
                        
                        elif wall_at_left <= col_distance and wall_at_front >= distance:
                            self.move_away()
                        
                        elif wall_at_left >= distance and wall_at_front >= distance:
                            self.find_the_wall()

                    self.cmd_vel_pub.publish(self.msg)
                    self.calculate_odometry()

                else:
                    rospy.loginfo("Left the Maze!!")
                    self._result.result = "OK"
                    self._as.set_succeeded(self._result)
                    break
        elif goal.technique == "navigation":
            msg = MoveBaseActionGoal()
            msg.goal.target_pose.header.frame_id = "map"
            msg.goal.target_pose.pose.position.x = -26
            msg.goal.target_pose.pose.position.y = 47.5
            msg.goal.target_pose.pose.orientation.w = 1
            self.send_goal.publish(msg)

    def calculate_odometry(self):
        odom = rospy.wait_for_message("/odom", Odometry, timeout=1)
        NewPosition = odom.pose.pose.position
        self._mved_distance.data += self.calculate_distance(NewPosition, self._current_position)
        self.updatecurrent_positin(NewPosition)

        if self._mved_distance.data < 0.000001:
            aux = Float32()
            aux = 0.0
            self._feedback.odom = aux

        else:

            self._feedback.odom = self._mved_distance.data

        self._as.publish_feedback(self._feedback)

    def updatecurrent_positin(self, new_position):
        """Update the current position of the robot."""
        self._current_position.x = new_position.x
        self._current_position.y = new_position.y
        self._current_position.z = new_position.z

    def calculate_distance(self, new_position, old_position):
        """Calculate the distance between two Points (positions)."""
        x2 = new_position.x
        x1 = old_position.x
        y2 = new_position.y
        y1 = old_position.y
        dist = math.hypot(x2 - x1, y2 - y1)
        return dist


    def move_away(self):
        self.msg = Twist()
        self.msg.linear.x = 1.0
        self.msg.angular.z = -0.3

    def find_the_wall(self)   :
        self.msg = Twist()
        self.msg.linear.x = 1.0
        self.msg.angular.z = 0.3

    def follow_foward_wall(self):
        self.msg = Twist()
        self.msg.linear.x = 1.0

    def start_wall_move(self):
        while np.min(self.laser_data.ranges[540:550]) >= 5:
            self.msg = Twist()
            self.msg.linear.x = 1.0
            self.msg.angular.z = 0.13
            self.cmd_vel_pub.publish(self.msg)

    def around_corner(self):
        self.msg = Twist()
        self.msg.angular.z = -1.0



if __name__ == '__main__':
    try:
        rospy.init_node('maze')
        server = escape_maze_Action(rospy.get_name())
        rospy.spin()

    except KeyboardInterrupt:
        pass
    
