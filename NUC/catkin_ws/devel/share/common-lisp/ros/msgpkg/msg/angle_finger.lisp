; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude angle_finger.msg.html

(cl:defclass <angle_finger> (roslisp-msg-protocol:ros-message)
  ((Data
    :reader Data
    :initarg :Data
    :type cl:float
    :initform 0.0))
)

(cl:defclass angle_finger (<angle_finger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <angle_finger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'angle_finger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<angle_finger> is deprecated: use msgpkg-msg:angle_finger instead.")))

(cl:ensure-generic-function 'Data-val :lambda-list '(m))
(cl:defmethod Data-val ((m <angle_finger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:Data-val is deprecated.  Use msgpkg-msg:Data instead.")
  (Data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <angle_finger>) ostream)
  "Serializes a message object of type '<angle_finger>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <angle_finger>) istream)
  "Deserializes a message object of type '<angle_finger>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Data) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<angle_finger>)))
  "Returns string type for a message object of type '<angle_finger>"
  "msgpkg/angle_finger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angle_finger)))
  "Returns string type for a message object of type 'angle_finger"
  "msgpkg/angle_finger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<angle_finger>)))
  "Returns md5sum for a message object of type '<angle_finger>"
  "cdf0857c334d04631fd6716a8c4c2496")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'angle_finger)))
  "Returns md5sum for a message object of type 'angle_finger"
  "cdf0857c334d04631fd6716a8c4c2496")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<angle_finger>)))
  "Returns full string definition for message of type '<angle_finger>"
  (cl:format cl:nil "float32 Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'angle_finger)))
  "Returns full string definition for message of type 'angle_finger"
  (cl:format cl:nil "float32 Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <angle_finger>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <angle_finger>))
  "Converts a ROS message object to a list"
  (cl:list 'angle_finger
    (cl:cons ':Data (Data msg))
))
