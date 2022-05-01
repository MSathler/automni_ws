#! /usr/bin/env python3

import rospy

import actionlib

import automni_resolution.msg

def maze_client():
    # Creates the SimpleActionClient, passing the type of the action
    # (FibonacciAction) to the constructor.
    client = actionlib.SimpleActionClient('maze', automni_resolution.msg.mazeActionAction)

    # Waits until the action server has started up and started
    # listening for goals.
    client.wait_for_server()

    # Creates a goal to send to the action server.
    # goal = automni_resolution.msg.mazeActionGoal(technique="escape_for_left_side")
    goal = automni_resolution.msg.mazeActionGoal(technique="navigation")

    # Sends the goal to the action server.
    client.send_goal(goal)

    # Waits for the server to finish performing the action.
    # client.wait_for_result()

    # # Prints out the result of executing the action
    # return client.get_result()  # A FibonacciResult

if __name__ == '__main__':
    try:
        # Initializes a rospy node so that the SimpleActionClient can
        # publish and subscribe over ROS.
        rospy.init_node('maze_client')
        maze_client()
        # print("Result:", ', '.join([str(n) for n in result.sequence]))
    except rospy.ROSInterruptException:
        print("program interrupted before completion", file=sys.stderr)
