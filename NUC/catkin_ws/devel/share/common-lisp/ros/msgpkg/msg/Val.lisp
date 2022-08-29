; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude Val.msg.html

(cl:defclass <Val> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0))
)

(cl:defclass Val (<Val>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Val>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Val)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<Val> is deprecated: use msgpkg-msg:Val instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Val>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:position-val is deprecated.  Use msgpkg-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Val>) ostream)
  "Serializes a message object of type '<Val>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Val>) istream)
  "Deserializes a message object of type '<Val>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Val>)))
  "Returns string type for a message object of type '<Val>"
  "msgpkg/Val")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Val)))
  "Returns string type for a message object of type 'Val"
  "msgpkg/Val")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Val>)))
  "Returns md5sum for a message object of type '<Val>"
  "e4e11b3af29ed247b2bd150d3f4540f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Val)))
  "Returns md5sum for a message object of type 'Val"
  "e4e11b3af29ed247b2bd150d3f4540f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Val>)))
  "Returns full string definition for message of type '<Val>"
  (cl:format cl:nil "float32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Val)))
  "Returns full string definition for message of type 'Val"
  (cl:format cl:nil "float32 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Val>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Val>))
  "Converts a ROS message object to a list"
  (cl:list 'Val
    (cl:cons ':position (position msg))
))
