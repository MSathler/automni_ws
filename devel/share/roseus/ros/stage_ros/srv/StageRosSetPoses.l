;; Auto-generated. Do not edit!


(when (boundp 'stage_ros::StageRosSetPoses)
  (if (not (find-package "STAGE_ROS"))
    (make-package "STAGE_ROS"))
  (shadow 'StageRosSetPoses (find-package "STAGE_ROS")))
(unless (find-package "STAGE_ROS::STAGEROSSETPOSES")
  (make-package "STAGE_ROS::STAGEROSSETPOSES"))
(unless (find-package "STAGE_ROS::STAGEROSSETPOSESREQUEST")
  (make-package "STAGE_ROS::STAGEROSSETPOSESREQUEST"))
(unless (find-package "STAGE_ROS::STAGEROSSETPOSESRESPONSE")
  (make-package "STAGE_ROS::STAGEROSSETPOSESRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass stage_ros::StageRosSetPosesRequest
  :super ros::object
  :slots (_new_poses ))

(defmethod stage_ros::StageRosSetPosesRequest
  (:init
   (&key
    ((:new_poses __new_poses) ())
    )
   (send-super :init)
   (setq _new_poses __new_poses)
   self)
  (:new_poses
   (&rest __new_poses)
   (if (keywordp (car __new_poses))
       (send* _new_poses __new_poses)
     (progn
       (if __new_poses (setq _new_poses (car __new_poses)))
       _new_poses)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D[] _new_poses
    (apply #'+ (send-all _new_poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D[] _new_poses
     (write-long (length _new_poses) s)
     (dolist (elem _new_poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D[] _new_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _new_poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _new_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass stage_ros::StageRosSetPosesResponse
  :super ros::object
  :slots (_response ))

(defmethod stage_ros::StageRosSetPosesResponse
  (:init
   (&key
    ((:response __response) nil)
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&optional (__response :null))
   (if (not (eq __response :null)) (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; bool _response
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _response
       (if _response (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _response
     (setq _response (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass stage_ros::StageRosSetPoses
  :super ros::object
  :slots ())

(setf (get stage_ros::StageRosSetPoses :md5sum-) "83a7a1cc1bfbdbb746fe908ac18d9848")
(setf (get stage_ros::StageRosSetPoses :datatype-) "stage_ros/StageRosSetPoses")
(setf (get stage_ros::StageRosSetPoses :request) stage_ros::StageRosSetPosesRequest)
(setf (get stage_ros::StageRosSetPoses :response) stage_ros::StageRosSetPosesResponse)

(defmethod stage_ros::StageRosSetPosesRequest
  (:response () (instance stage_ros::StageRosSetPosesResponse :init)))

(setf (get stage_ros::StageRosSetPosesRequest :md5sum-) "83a7a1cc1bfbdbb746fe908ac18d9848")
(setf (get stage_ros::StageRosSetPosesRequest :datatype-) "stage_ros/StageRosSetPosesRequest")
(setf (get stage_ros::StageRosSetPosesRequest :definition-)
      "geometry_msgs/Pose2D[] new_poses

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
---
bool response
")

(setf (get stage_ros::StageRosSetPosesResponse :md5sum-) "83a7a1cc1bfbdbb746fe908ac18d9848")
(setf (get stage_ros::StageRosSetPosesResponse :datatype-) "stage_ros/StageRosSetPosesResponse")
(setf (get stage_ros::StageRosSetPosesResponse :definition-)
      "geometry_msgs/Pose2D[] new_poses

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
---
bool response
")



(provide :stage_ros/StageRosSetPoses "83a7a1cc1bfbdbb746fe908ac18d9848")


