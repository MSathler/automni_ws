; Auto-generated. Do not edit!


(cl:in-package stage_ros-srv)


;//! \htmlinclude StageRosGetPoses-request.msg.html

(cl:defclass <StageRosGetPoses-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StageRosGetPoses-request (<StageRosGetPoses-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StageRosGetPoses-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StageRosGetPoses-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stage_ros-srv:<StageRosGetPoses-request> is deprecated: use stage_ros-srv:StageRosGetPoses-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StageRosGetPoses-request>) ostream)
  "Serializes a message object of type '<StageRosGetPoses-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StageRosGetPoses-request>) istream)
  "Deserializes a message object of type '<StageRosGetPoses-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StageRosGetPoses-request>)))
  "Returns string type for a service object of type '<StageRosGetPoses-request>"
  "stage_ros/StageRosGetPosesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StageRosGetPoses-request)))
  "Returns string type for a service object of type 'StageRosGetPoses-request"
  "stage_ros/StageRosGetPosesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StageRosGetPoses-request>)))
  "Returns md5sum for a message object of type '<StageRosGetPoses-request>"
  "31a710d661541413a823a4591402c488")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StageRosGetPoses-request)))
  "Returns md5sum for a message object of type 'StageRosGetPoses-request"
  "31a710d661541413a823a4591402c488")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StageRosGetPoses-request>)))
  "Returns full string definition for message of type '<StageRosGetPoses-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StageRosGetPoses-request)))
  "Returns full string definition for message of type 'StageRosGetPoses-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StageRosGetPoses-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StageRosGetPoses-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StageRosGetPoses-request
))
;//! \htmlinclude StageRosGetPoses-response.msg.html

(cl:defclass <StageRosGetPoses-response> (roslisp-msg-protocol:ros-message)
  ((poses
    :reader poses
    :initarg :poses
    :type (cl:vector geometry_msgs-msg:Pose2D)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose2D :initial-element (cl:make-instance 'geometry_msgs-msg:Pose2D))))
)

(cl:defclass StageRosGetPoses-response (<StageRosGetPoses-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StageRosGetPoses-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StageRosGetPoses-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stage_ros-srv:<StageRosGetPoses-response> is deprecated: use stage_ros-srv:StageRosGetPoses-response instead.")))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <StageRosGetPoses-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stage_ros-srv:poses-val is deprecated.  Use stage_ros-srv:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StageRosGetPoses-response>) ostream)
  "Serializes a message object of type '<StageRosGetPoses-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StageRosGetPoses-response>) istream)
  "Deserializes a message object of type '<StageRosGetPoses-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StageRosGetPoses-response>)))
  "Returns string type for a service object of type '<StageRosGetPoses-response>"
  "stage_ros/StageRosGetPosesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StageRosGetPoses-response)))
  "Returns string type for a service object of type 'StageRosGetPoses-response"
  "stage_ros/StageRosGetPosesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StageRosGetPoses-response>)))
  "Returns md5sum for a message object of type '<StageRosGetPoses-response>"
  "31a710d661541413a823a4591402c488")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StageRosGetPoses-response)))
  "Returns md5sum for a message object of type 'StageRosGetPoses-response"
  "31a710d661541413a823a4591402c488")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StageRosGetPoses-response>)))
  "Returns full string definition for message of type '<StageRosGetPoses-response>"
  (cl:format cl:nil "geometry_msgs/Pose2D[] poses~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StageRosGetPoses-response)))
  "Returns full string definition for message of type 'StageRosGetPoses-response"
  (cl:format cl:nil "geometry_msgs/Pose2D[] poses~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StageRosGetPoses-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StageRosGetPoses-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StageRosGetPoses-response
    (cl:cons ':poses (poses msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StageRosGetPoses)))
  'StageRosGetPoses-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StageRosGetPoses)))
  'StageRosGetPoses-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StageRosGetPoses)))
  "Returns string type for a service object of type '<StageRosGetPoses>"
  "stage_ros/StageRosGetPoses")