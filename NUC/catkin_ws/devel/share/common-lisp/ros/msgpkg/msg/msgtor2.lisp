; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude msgtor2.msg.html

(cl:defclass <msgtor2> (roslisp-msg-protocol:ros-message)
  ((tor1
    :reader tor1
    :initarg :tor1
    :type cl:float
    :initform 0.0)
   (tor2
    :reader tor2
    :initarg :tor2
    :type cl:float
    :initform 0.0))
)

(cl:defclass msgtor2 (<msgtor2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgtor2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgtor2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<msgtor2> is deprecated: use msgpkg-msg:msgtor2 instead.")))

(cl:ensure-generic-function 'tor1-val :lambda-list '(m))
(cl:defmethod tor1-val ((m <msgtor2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:tor1-val is deprecated.  Use msgpkg-msg:tor1 instead.")
  (tor1 m))

(cl:ensure-generic-function 'tor2-val :lambda-list '(m))
(cl:defmethod tor2-val ((m <msgtor2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:tor2-val is deprecated.  Use msgpkg-msg:tor2 instead.")
  (tor2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgtor2>) ostream)
  "Serializes a message object of type '<msgtor2>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tor1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tor2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgtor2>) istream)
  "Deserializes a message object of type '<msgtor2>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tor1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tor2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgtor2>)))
  "Returns string type for a message object of type '<msgtor2>"
  "msgpkg/msgtor2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgtor2)))
  "Returns string type for a message object of type 'msgtor2"
  "msgpkg/msgtor2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgtor2>)))
  "Returns md5sum for a message object of type '<msgtor2>"
  "2c696c86de69c5c7b67b06aa4153bc27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgtor2)))
  "Returns md5sum for a message object of type 'msgtor2"
  "2c696c86de69c5c7b67b06aa4153bc27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgtor2>)))
  "Returns full string definition for message of type '<msgtor2>"
  (cl:format cl:nil "float32 tor1~%float32 tor2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgtor2)))
  "Returns full string definition for message of type 'msgtor2"
  (cl:format cl:nil "float32 tor1~%float32 tor2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgtor2>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgtor2>))
  "Converts a ROS message object to a list"
  (cl:list 'msgtor2
    (cl:cons ':tor1 (tor1 msg))
    (cl:cons ':tor2 (tor2 msg))
))
