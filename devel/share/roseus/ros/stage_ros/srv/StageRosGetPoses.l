;; Auto-generated. Do not edit!


(when (boundp 'stage_ros::StageRosGetPoses)
  (if (not (find-package "STAGE_ROS"))
    (make-package "STAGE_ROS"))
  (shadow 'StageRosGetPoses (find-package "STAGE_ROS")))
(unless (find-package "STAGE_ROS::STAGEROSGETPOSES")
  (make-package "STAGE_ROS::STAGEROSGETPOSES"))
(unless (find-package "STAGE_ROS::STAGEROSGETPOSESREQUEST")
  (make-package "STAGE_ROS::STAGEROSGETPOSESREQUEST"))
(unless (find-package "STAGE_ROS::STAGEROSGETPOSESRESPONSE")
  (make-package "STAGE_ROS::STAGEROSGETPOSESRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass stage_ros::StageRosGetPosesRequest
  :super ros::object
  :slots ())

(defmethod stage_ros::StageRosGetPosesRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass stage_ros::StageRosGetPosesResponse
  :super ros::object
  :slots (_poses ))

(defmethod stage_ros::StageRosGetPosesResponse
  (:init
   (&key
    ((:poses __poses) ())
    )
   (send-super :init)
   (setq _poses __poses)
   self)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass stage_ros::StageRosGetPoses
  :super ros::object
  :slots ())

(setf (get stage_ros::StageRosGetPoses :md5sum-) "31a710d661541413a823a4591402c488")
(setf (get stage_ros::StageRosGetPoses :datatype-) "stage_ros/StageRosGetPoses")
(setf (get stage_ros::StageRosGetPoses :request) stage_ros::StageRosGetPosesRequest)
(setf (get stage_ros::StageRosGetPoses :response) stage_ros::StageRosGetPosesResponse)

(defmethod stage_ros::StageRosGetPosesRequest
  (:response () (instance stage_ros::StageRosGetPosesResponse :init)))

(setf (get stage_ros::StageRosGetPosesRequest :md5sum-) "31a710d661541413a823a4591402c488")
(setf (get stage_ros::StageRosGetPosesRequest :datatype-) "stage_ros/StageRosGetPosesRequest")
(setf (get stage_ros::StageRosGetPosesRequest :definition-)
      "---
geometry_msgs/Pose2D[] poses



================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")

(setf (get stage_ros::StageRosGetPosesResponse :md5sum-) "31a710d661541413a823a4591402c488")
(setf (get stage_ros::StageRosGetPosesResponse :datatype-) "stage_ros/StageRosGetPosesResponse")
(setf (get stage_ros::StageRosGetPosesResponse :definition-)
      "---
geometry_msgs/Pose2D[] poses



================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")



(provide :stage_ros/StageRosGetPoses "31a710d661541413a823a4591402c488")


