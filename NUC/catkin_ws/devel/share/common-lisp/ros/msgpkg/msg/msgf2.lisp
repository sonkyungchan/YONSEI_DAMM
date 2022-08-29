; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude msgf2.msg.html

(cl:defclass <msgf2> (roslisp-msg-protocol:ros-message)
  ((for2
    :reader for2
    :initarg :for2
    :type cl:float
    :initform 0.0))
)

(cl:defclass msgf2 (<msgf2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgf2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgf2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<msgf2> is deprecated: use msgpkg-msg:msgf2 instead.")))

(cl:ensure-generic-function 'for2-val :lambda-list '(m))
(cl:defmethod for2-val ((m <msgf2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:for2-val is deprecated.  Use msgpkg-msg:for2 instead.")
  (for2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgf2>) ostream)
  "Serializes a message object of type '<msgf2>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'for2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgf2>) istream)
  "Deserializes a message object of type '<msgf2>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'for2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgf2>)))
  "Returns string type for a message object of type '<msgf2>"
  "msgpkg/msgf2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgf2)))
  "Returns string type for a message object of type 'msgf2"
  "msgpkg/msgf2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgf2>)))
  "Returns md5sum for a message object of type '<msgf2>"
  "055ebaaa36f43d418526ea4a0cc9f35e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgf2)))
  "Returns md5sum for a message object of type 'msgf2"
  "055ebaaa36f43d418526ea4a0cc9f35e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgf2>)))
  "Returns full string definition for message of type '<msgf2>"
  (cl:format cl:nil "float32 for2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgf2)))
  "Returns full string definition for message of type 'msgf2"
  (cl:format cl:nil "float32 for2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgf2>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgf2>))
  "Converts a ROS message object to a list"
  (cl:list 'msgf2
    (cl:cons ':for2 (for2 msg))
))
