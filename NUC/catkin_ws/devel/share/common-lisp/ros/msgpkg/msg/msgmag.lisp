; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude msgmag.msg.html

(cl:defclass <msgmag> (roslisp-msg-protocol:ros-message)
  ((mag
    :reader mag
    :initarg :mag
    :type cl:float
    :initform 0.0))
)

(cl:defclass msgmag (<msgmag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgmag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgmag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<msgmag> is deprecated: use msgpkg-msg:msgmag instead.")))

(cl:ensure-generic-function 'mag-val :lambda-list '(m))
(cl:defmethod mag-val ((m <msgmag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:mag-val is deprecated.  Use msgpkg-msg:mag instead.")
  (mag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgmag>) ostream)
  "Serializes a message object of type '<msgmag>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgmag>) istream)
  "Deserializes a message object of type '<msgmag>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mag) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgmag>)))
  "Returns string type for a message object of type '<msgmag>"
  "msgpkg/msgmag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgmag)))
  "Returns string type for a message object of type 'msgmag"
  "msgpkg/msgmag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgmag>)))
  "Returns md5sum for a message object of type '<msgmag>"
  "938244a09b40aebc4fca0d898d8e25f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgmag)))
  "Returns md5sum for a message object of type 'msgmag"
  "938244a09b40aebc4fca0d898d8e25f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgmag>)))
  "Returns full string definition for message of type '<msgmag>"
  (cl:format cl:nil "float32 mag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgmag)))
  "Returns full string definition for message of type 'msgmag"
  (cl:format cl:nil "float32 mag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgmag>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgmag>))
  "Converts a ROS message object to a list"
  (cl:list 'msgmag
    (cl:cons ':mag (mag msg))
))
