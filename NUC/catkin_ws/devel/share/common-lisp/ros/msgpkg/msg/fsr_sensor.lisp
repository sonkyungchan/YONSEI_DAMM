; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude fsr_sensor.msg.html

(cl:defclass <fsr_sensor> (roslisp-msg-protocol:ros-message)
  ((Data
    :reader Data
    :initarg :Data
    :type cl:float
    :initform 0.0))
)

(cl:defclass fsr_sensor (<fsr_sensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fsr_sensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fsr_sensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<fsr_sensor> is deprecated: use msgpkg-msg:fsr_sensor instead.")))

(cl:ensure-generic-function 'Data-val :lambda-list '(m))
(cl:defmethod Data-val ((m <fsr_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:Data-val is deprecated.  Use msgpkg-msg:Data instead.")
  (Data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fsr_sensor>) ostream)
  "Serializes a message object of type '<fsr_sensor>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fsr_sensor>) istream)
  "Deserializes a message object of type '<fsr_sensor>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Data) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fsr_sensor>)))
  "Returns string type for a message object of type '<fsr_sensor>"
  "msgpkg/fsr_sensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fsr_sensor)))
  "Returns string type for a message object of type 'fsr_sensor"
  "msgpkg/fsr_sensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fsr_sensor>)))
  "Returns md5sum for a message object of type '<fsr_sensor>"
  "cdf0857c334d04631fd6716a8c4c2496")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fsr_sensor)))
  "Returns md5sum for a message object of type 'fsr_sensor"
  "cdf0857c334d04631fd6716a8c4c2496")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fsr_sensor>)))
  "Returns full string definition for message of type '<fsr_sensor>"
  (cl:format cl:nil "float32 Data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fsr_sensor)))
  "Returns full string definition for message of type 'fsr_sensor"
  (cl:format cl:nil "float32 Data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fsr_sensor>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fsr_sensor>))
  "Converts a ROS message object to a list"
  (cl:list 'fsr_sensor
    (cl:cons ':Data (Data msg))
))
