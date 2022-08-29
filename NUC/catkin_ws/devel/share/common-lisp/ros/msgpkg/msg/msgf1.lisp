; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude msgf1.msg.html

(cl:defclass <msgf1> (roslisp-msg-protocol:ros-message)
  ((for1
    :reader for1
    :initarg :for1
    :type cl:float
    :initform 0.0))
)

(cl:defclass msgf1 (<msgf1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgf1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgf1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<msgf1> is deprecated: use msgpkg-msg:msgf1 instead.")))

(cl:ensure-generic-function 'for1-val :lambda-list '(m))
(cl:defmethod for1-val ((m <msgf1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:for1-val is deprecated.  Use msgpkg-msg:for1 instead.")
  (for1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgf1>) ostream)
  "Serializes a message object of type '<msgf1>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'for1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgf1>) istream)
  "Deserializes a message object of type '<msgf1>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'for1) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgf1>)))
  "Returns string type for a message object of type '<msgf1>"
  "msgpkg/msgf1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgf1)))
  "Returns string type for a message object of type 'msgf1"
  "msgpkg/msgf1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgf1>)))
  "Returns md5sum for a message object of type '<msgf1>"
  "e496f6ad40f2ceb95bb6fa115defb5e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgf1)))
  "Returns md5sum for a message object of type 'msgf1"
  "e496f6ad40f2ceb95bb6fa115defb5e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgf1>)))
  "Returns full string definition for message of type '<msgf1>"
  (cl:format cl:nil "float32 for1~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgf1)))
  "Returns full string definition for message of type 'msgf1"
  (cl:format cl:nil "float32 for1~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgf1>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgf1>))
  "Converts a ROS message object to a list"
  (cl:list 'msgf1
    (cl:cons ':for1 (for1 msg))
))
