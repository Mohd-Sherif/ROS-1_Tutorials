; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude V2V.msg.html

(cl:defclass <V2V> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (batterry_level
    :reader batterry_level
    :initarg :batterry_level
    :type cl:float
    :initform 0.0)
   (car_pose
    :reader car_pose
    :initarg :car_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (car_speed
    :reader car_speed
    :initarg :car_speed
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass V2V (<V2V>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2V>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2V)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<V2V> is deprecated: use beginner_tutorials-msg:V2V instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <V2V>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:id-val is deprecated.  Use beginner_tutorials-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <V2V>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:name-val is deprecated.  Use beginner_tutorials-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'batterry_level-val :lambda-list '(m))
(cl:defmethod batterry_level-val ((m <V2V>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:batterry_level-val is deprecated.  Use beginner_tutorials-msg:batterry_level instead.")
  (batterry_level m))

(cl:ensure-generic-function 'car_pose-val :lambda-list '(m))
(cl:defmethod car_pose-val ((m <V2V>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:car_pose-val is deprecated.  Use beginner_tutorials-msg:car_pose instead.")
  (car_pose m))

(cl:ensure-generic-function 'car_speed-val :lambda-list '(m))
(cl:defmethod car_speed-val ((m <V2V>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:car_speed-val is deprecated.  Use beginner_tutorials-msg:car_speed instead.")
  (car_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2V>) ostream)
  "Serializes a message object of type '<V2V>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'batterry_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'car_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'car_speed) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2V>) istream)
  "Deserializes a message object of type '<V2V>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'batterry_level) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'car_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'car_speed) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2V>)))
  "Returns string type for a message object of type '<V2V>"
  "beginner_tutorials/V2V")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2V)))
  "Returns string type for a message object of type 'V2V"
  "beginner_tutorials/V2V")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2V>)))
  "Returns md5sum for a message object of type '<V2V>"
  "5dadcc72213a11a9b9e3ffee3fcf962b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2V)))
  "Returns md5sum for a message object of type 'V2V"
  "5dadcc72213a11a9b9e3ffee3fcf962b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2V>)))
  "Returns full string definition for message of type '<V2V>"
  (cl:format cl:nil "int32 id~%string name~%float32 batterry_level~%geometry_msgs/Pose2D car_pose~%geometry_msgs/Twist car_speed~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2V)))
  "Returns full string definition for message of type 'V2V"
  (cl:format cl:nil "int32 id~%string name~%float32 batterry_level~%geometry_msgs/Pose2D car_pose~%geometry_msgs/Twist car_speed~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2V>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'car_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'car_speed))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2V>))
  "Converts a ROS message object to a list"
  (cl:list 'V2V
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':batterry_level (batterry_level msg))
    (cl:cons ':car_pose (car_pose msg))
    (cl:cons ':car_speed (car_speed msg))
))
