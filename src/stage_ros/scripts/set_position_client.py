import sys
import rospy
from stage_ros.srv import StageRosSetPoses
from geometry_msgs.msg import Pose2D

def set_position_client():
    rospy.wait_for_service('set_positions')
    try:
        set_position = rospy.ServiceProxy('set_positions', StageRosSetPoses)

        parray = []

        pose_aux1 = Pose2D()
        pose_aux1.x = 0.
        pose_aux1.y = 0.
        pose_aux1.theta = 0.
        parray.append(pose_aux1)

        pose_aux2 = Pose2D()
        pose_aux2.x = 5.
        pose_aux2.y = 0.
        pose_aux2.theta = 0.
        parray.append(pose_aux2)

        pose_aux3 = Pose2D()
        pose_aux3.x = 0.
        pose_aux3.y = 5.
        pose_aux3.theta = 0.
        parray.append(pose_aux3)

        handle = set_position(parray)
        return handle.response

    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

if __name__ == "__main__":
    rospy.init_node('set_position_client')

    print("Response: %r" % (set_position_client()))