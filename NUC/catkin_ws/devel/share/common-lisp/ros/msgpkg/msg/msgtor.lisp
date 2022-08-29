; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude msgtor.msg.html

(cl:defclass <msgtor> (roslisp-msg-protocol:ros-message)
  ((tor
    :reader tor
    :initarg :tor
    :type cl:float
    :initform 0.0))
)

(cl:defclass msgtor (<msgtor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgtor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgtor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<msgtor> is deprecated: use msgpkg-msg:msgtor instead.")))

(cl:ensure-generic-function 'tor-val :lambda-list '(m))
(cl:defmethod tor-val ((m <msgtor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:tor-val is deprecated.  Use msgpkg-msg:tor instead.")
  (tor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgtor>) ostream)
  "Serializes a message object of type '<msgtor>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgtor>) istream)
  "Deserializes a message object of type '<msgtor>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tor) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgtor>)))
  "Returns string type for a message object of type '<msgtor>"
  "msgpkg/msgtor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgtor)))
  "Returns string type for a message object of type 'msgtor"
  "msgpkg/msgtor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgtor>)))
  "Returns md5sum for a message object of type '<msgtor>"
  "087bb50d3e0b88ee3559c736b6ddf16b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgtor)))
  "Returns md5sum for a message object of type 'msgtor"
  "087bb50d3e0b88ee3559c736b6ddf16b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgtor>)))
  "Returns full string definition for message of type '<msgtor>"
  (cl:format cl:nil "float32 tor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgtor)))
  "Returns full string definition for message of type 'msgtor"
  (cl:format cl:nil "float32 tor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgtor>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgtor>))
  "Converts a ROS message object to a list"
  (cl:list 'msgtor
    (cl:cons ':tor (tor msg))
))
