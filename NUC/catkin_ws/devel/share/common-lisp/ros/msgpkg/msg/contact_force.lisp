; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude contact_force.msg.html

(cl:defclass <contact_force> (roslisp-msg-protocol:ros-message)
  ((Data
    :reader Data
    :initarg :Data
    :type cl:float
    :initform 0.0))
)

(cl:defclass contact_force (<contact_force>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <contact_force>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'contact_force)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<contact_force> is deprecated: use msgpkg-msg:contact_force instead.")))

(cl:ensure-generic-function 'Data-val :lambda-list '(m))
(cl:defmethod Data-val ((m <contact_force>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:Data-val is deprecated.  Use msgpkg-msg:Data instead.")
  (Data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <contact_force>) ostream)
  "Serializes a message object of type '<contact_force>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <contact_force>) istream)
  "Deserializes a message object of type '<contact_force>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Data) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<contact_force>)))
  "Returns string type for a message object of type '<contact_force>"
  "msgpkg/contact_force")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'contact_force)))
  "Returns string type for a message object of type 'contact_force"
  "msgpkg/contact_force")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<contact_force>)))
  "Returns md5sum for a message object of type '<contact_force>"
  "cdf0857c334d04631fd6716a8c4c2496")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'contact_force)))
  "Returns md5sum for a message object of type 'contact_force"
  "cdf0857c334d04631fd6716a8c4c2496")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<contact_force>)))
  "Returns full string definition for message of type '<contact_force>"
  (cl:format cl:nil "float32 Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'contact_force)))
  "Returns full string definition for message of type 'contact_force"
  (cl:format cl:nil "float32 Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <contact_force>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <contact_force>))
  "Converts a ROS message object to a list"
  (cl:list 'contact_force
    (cl:cons ':Data (Data msg))
))
