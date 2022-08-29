; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude gripper_dis.msg.html

(cl:defclass <gripper_dis> (roslisp-msg-protocol:ros-message)
  ((gripper_dis
    :reader gripper_dis
    :initarg :gripper_dis
    :type cl:float
    :initform 0.0))
)

(cl:defclass gripper_dis (<gripper_dis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gripper_dis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gripper_dis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<gripper_dis> is deprecated: use msgpkg-msg:gripper_dis instead.")))

(cl:ensure-generic-function 'gripper_dis-val :lambda-list '(m))
(cl:defmethod gripper_dis-val ((m <gripper_dis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:gripper_dis-val is deprecated.  Use msgpkg-msg:gripper_dis instead.")
  (gripper_dis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gripper_dis>) ostream)
  "Serializes a message object of type '<gripper_dis>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gripper_dis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gripper_dis>) istream)
  "Deserializes a message object of type '<gripper_dis>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gripper_dis) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gripper_dis>)))
  "Returns string type for a message object of type '<gripper_dis>"
  "msgpkg/gripper_dis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gripper_dis)))
  "Returns string type for a message object of type 'gripper_dis"
  "msgpkg/gripper_dis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gripper_dis>)))
  "Returns md5sum for a message object of type '<gripper_dis>"
  "fe37c961195d22e6ba99189474288c9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gripper_dis)))
  "Returns md5sum for a message object of type 'gripper_dis"
  "fe37c961195d22e6ba99189474288c9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gripper_dis>)))
  "Returns full string definition for message of type '<gripper_dis>"
  (cl:format cl:nil "float64 gripper_dis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gripper_dis)))
  "Returns full string definition for message of type 'gripper_dis"
  (cl:format cl:nil "float64 gripper_dis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gripper_dis>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gripper_dis>))
  "Converts a ROS message object to a list"
  (cl:list 'gripper_dis
    (cl:cons ':gripper_dis (gripper_dis msg))
))
