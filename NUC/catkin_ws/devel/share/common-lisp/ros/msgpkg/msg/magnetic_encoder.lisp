; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude magnetic_encoder.msg.html

(cl:defclass <magnetic_encoder> (roslisp-msg-protocol:ros-message)
  ((Data
    :reader Data
    :initarg :Data
    :type cl:float
    :initform 0.0))
)

(cl:defclass magnetic_encoder (<magnetic_encoder>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <magnetic_encoder>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'magnetic_encoder)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<magnetic_encoder> is deprecated: use msgpkg-msg:magnetic_encoder instead.")))

(cl:ensure-generic-function 'Data-val :lambda-list '(m))
(cl:defmethod Data-val ((m <magnetic_encoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:Data-val is deprecated.  Use msgpkg-msg:Data instead.")
  (Data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <magnetic_encoder>) ostream)
  "Serializes a message object of type '<magnetic_encoder>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <magnetic_encoder>) istream)
  "Deserializes a message object of type '<magnetic_encoder>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Data) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<magnetic_encoder>)))
  "Returns string type for a message object of type '<magnetic_encoder>"
  "msgpkg/magnetic_encoder")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'magnetic_encoder)))
  "Returns string type for a message object of type 'magnetic_encoder"
  "msgpkg/magnetic_encoder")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<magnetic_encoder>)))
  "Returns md5sum for a message object of type '<magnetic_encoder>"
  "cdf0857c334d04631fd6716a8c4c2496")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'magnetic_encoder)))
  "Returns md5sum for a message object of type 'magnetic_encoder"
  "cdf0857c334d04631fd6716a8c4c2496")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<magnetic_encoder>)))
  "Returns full string definition for message of type '<magnetic_encoder>"
  (cl:format cl:nil "float32 Data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'magnetic_encoder)))
  "Returns full string definition for message of type 'magnetic_encoder"
  (cl:format cl:nil "float32 Data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <magnetic_encoder>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <magnetic_encoder>))
  "Converts a ROS message object to a list"
  (cl:list 'magnetic_encoder
    (cl:cons ':Data (Data msg))
))
