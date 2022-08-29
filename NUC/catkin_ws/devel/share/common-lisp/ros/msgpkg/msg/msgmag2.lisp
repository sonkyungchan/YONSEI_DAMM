; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude msgmag2.msg.html

(cl:defclass <msgmag2> (roslisp-msg-protocol:ros-message)
  ((mag2
    :reader mag2
    :initarg :mag2
    :type cl:float
    :initform 0.0))
)

(cl:defclass msgmag2 (<msgmag2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgmag2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgmag2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<msgmag2> is deprecated: use msgpkg-msg:msgmag2 instead.")))

(cl:ensure-generic-function 'mag2-val :lambda-list '(m))
(cl:defmethod mag2-val ((m <msgmag2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:mag2-val is deprecated.  Use msgpkg-msg:mag2 instead.")
  (mag2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgmag2>) ostream)
  "Serializes a message object of type '<msgmag2>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mag2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgmag2>) istream)
  "Deserializes a message object of type '<msgmag2>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mag2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgmag2>)))
  "Returns string type for a message object of type '<msgmag2>"
  "msgpkg/msgmag2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgmag2)))
  "Returns string type for a message object of type 'msgmag2"
  "msgpkg/msgmag2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgmag2>)))
  "Returns md5sum for a message object of type '<msgmag2>"
  "0bc0b38d8ef0e3a66f9ed02f56e05589")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgmag2)))
  "Returns md5sum for a message object of type 'msgmag2"
  "0bc0b38d8ef0e3a66f9ed02f56e05589")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgmag2>)))
  "Returns full string definition for message of type '<msgmag2>"
  (cl:format cl:nil "float32 mag2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgmag2)))
  "Returns full string definition for message of type 'msgmag2"
  (cl:format cl:nil "float32 mag2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgmag2>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgmag2>))
  "Converts a ROS message object to a list"
  (cl:list 'msgmag2
    (cl:cons ':mag2 (mag2 msg))
))
