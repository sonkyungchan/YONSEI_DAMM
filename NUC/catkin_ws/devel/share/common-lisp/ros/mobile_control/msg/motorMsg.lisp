; Auto-generated. Do not edit!


(cl:in-package mobile_control-msg)


;//! \htmlinclude motorMsg.msg.html

(cl:defclass <motorMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (omega1
    :reader omega1
    :initarg :omega1
    :type cl:integer
    :initform 0)
   (omega2
    :reader omega2
    :initarg :omega2
    :type cl:integer
    :initform 0)
   (omega3
    :reader omega3
    :initarg :omega3
    :type cl:integer
    :initform 0)
   (omega4
    :reader omega4
    :initarg :omega4
    :type cl:integer
    :initform 0))
)

(cl:defclass motorMsg (<motorMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motorMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motorMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_control-msg:<motorMsg> is deprecated: use mobile_control-msg:motorMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <motorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_control-msg:header-val is deprecated.  Use mobile_control-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'omega1-val :lambda-list '(m))
(cl:defmethod omega1-val ((m <motorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_control-msg:omega1-val is deprecated.  Use mobile_control-msg:omega1 instead.")
  (omega1 m))

(cl:ensure-generic-function 'omega2-val :lambda-list '(m))
(cl:defmethod omega2-val ((m <motorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_control-msg:omega2-val is deprecated.  Use mobile_control-msg:omega2 instead.")
  (omega2 m))

(cl:ensure-generic-function 'omega3-val :lambda-list '(m))
(cl:defmethod omega3-val ((m <motorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_control-msg:omega3-val is deprecated.  Use mobile_control-msg:omega3 instead.")
  (omega3 m))

(cl:ensure-generic-function 'omega4-val :lambda-list '(m))
(cl:defmethod omega4-val ((m <motorMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_control-msg:omega4-val is deprecated.  Use mobile_control-msg:omega4 instead.")
  (omega4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motorMsg>) ostream)
  "Serializes a message object of type '<motorMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'omega1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'omega2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'omega3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'omega4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motorMsg>) istream)
  "Deserializes a message object of type '<motorMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'omega1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'omega2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'omega3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'omega4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motorMsg>)))
  "Returns string type for a message object of type '<motorMsg>"
  "mobile_control/motorMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motorMsg)))
  "Returns string type for a message object of type 'motorMsg"
  "mobile_control/motorMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motorMsg>)))
  "Returns md5sum for a message object of type '<motorMsg>"
  "cc96ee74795dd87ba70013bf55e8a168")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motorMsg)))
  "Returns md5sum for a message object of type 'motorMsg"
  "cc96ee74795dd87ba70013bf55e8a168")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motorMsg>)))
  "Returns full string definition for message of type '<motorMsg>"
  (cl:format cl:nil "Header header~%~%int32 omega1~%int32 omega2~%int32 omega3~%int32 omega4~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motorMsg)))
  "Returns full string definition for message of type 'motorMsg"
  (cl:format cl:nil "Header header~%~%int32 omega1~%int32 omega2~%int32 omega3~%int32 omega4~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motorMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motorMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'motorMsg
    (cl:cons ':header (header msg))
    (cl:cons ':omega1 (omega1 msg))
    (cl:cons ':omega2 (omega2 msg))
    (cl:cons ':omega3 (omega3 msg))
    (cl:cons ':omega4 (omega4 msg))
))
