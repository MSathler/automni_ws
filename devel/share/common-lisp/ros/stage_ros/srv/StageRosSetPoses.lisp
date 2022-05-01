; Auto-generated. Do not edit!


(cl:in-package stage_ros-srv)


;//! \htmlinclude StageRosSetPoses-request.msg.html

(cl:defclass <StageRosSetPoses-request> (roslisp-msg-protocol:ros-message)
  ((new_poses
    :reader new_poses
    :initarg :new_poses
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D))))
)

(cl:defclass StageRosSetPoses-request (<StageRosSetPoses-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StageRosSetPoses-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StageRosSetPoses-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stage_ros-srv:<StageRosSetPoses-request> is deprecated: use stage_ros-srv:StageRosSetPoses-request instead.")))

(cl:ensure-generic-function 'new_poses-val :lambda-list '(m))
(cl:defmethod new_poses-val ((m <StageRosSetPoses-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stage_ros-srv:new_poses-val is deprecated.  Use stage_ros-srv:new_poses instead.")
  (new_poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StageRosSetPoses-request>) ostream)
  "Serializes a message object of type '<StageRosSetPoses-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'new_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'new_poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StageRosSetPoses-request>) istream)
  "Deserializes a message object of type '<StageRosSetPoses-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'new_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'new_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StageRosSetPoses-request>)))
  "Returns string type for a service object of type '<StageRosSetPoses-request>"
  "stage_ros/StageRosSetPosesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StageRosSetPoses-request)))
  "Returns string type for a service object of type 'StageRosSetPoses-request"
  "stage_ros/StageRosSetPosesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StageRosSetPoses-request>)))
  "Returns md5sum for a message object of type '<StageRosSetPoses-request>"
  "83a7a1cc1bfbdbb746fe908ac18d9848")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StageRosSetPoses-request)))
  "Returns md5sum for a message object of type 'StageRosSetPoses-request"
  "83a7a1cc1bfbdbb746fe908ac18d9848")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StageRosSetPoses-request>)))
  "Returns full string definition for message of type '<StageRosSetPoses-request>"
  (cl:format cl:nil "geometry_msgs/Pose2D[] new_poses~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StageRosSetPoses-request)))
  "Returns full string definition for message of type 'StageRosSetPoses-request"
  (cl:format cl:nil "geometry_msgs/Pose2D[] new_poses~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StageRosSetPoses-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'new_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StageRosSetPoses-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StageRosSetPoses-request
    (cl:cons ':new_poses (new_poses msg))
))
;//! \htmlinclude StageRosSetPoses-response.msg.html

(cl:defclass <StageRosSetPoses-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StageRosSetPoses-response (<StageRosSetPoses-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StageRosSetPoses-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StageRosSetPoses-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stage_ros-srv:<StageRosSetPoses-response> is deprecated: use stage_ros-srv:StageRosSetPoses-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <StageRosSetPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stage_ros-srv:response-val is deprecated.  Use stage_ros-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StageRosSetPoses-response>) ostream)
  "Serializes a message object of type '<StageRosSetPoses-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StageRosSetPoses-response>) istream)
  "Deserializes a message object of type '<StageRosSetPoses-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StageRosSetPoses-response>)))
  "Returns string type for a service object of type '<StageRosSetPoses-response>"
  "stage_ros/StageRosSetPosesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StageRosSetPoses-response)))
  "Returns string type for a service object of type 'StageRosSetPoses-response"
  "stage_ros/StageRosSetPosesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StageRosSetPoses-response>)))
  "Returns md5sum for a message object of type '<StageRosSetPoses-response>"
  "83a7a1cc1bfbdbb746fe908ac18d9848")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StageRosSetPoses-response)))
  "Returns md5sum for a message object of type 'StageRosSetPoses-response"
  "83a7a1cc1bfbdbb746fe908ac18d9848")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StageRosSetPoses-response>)))
  "Returns full string definition for message of type '<StageRosSetPoses-response>"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StageRosSetPoses-response)))
  "Returns full string definition for message of type 'StageRosSetPoses-response"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StageRosSetPoses-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StageRosSetPoses-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StageRosSetPoses-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StageRosSetPoses)))
  'StageRosSetPoses-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StageRosSetPoses)))
  'StageRosSetPoses-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StageRosSetPoses)))
  "Returns string type for a service object of type '<StageRosSetPoses>"
  "stage_ros/StageRosSetPoses")