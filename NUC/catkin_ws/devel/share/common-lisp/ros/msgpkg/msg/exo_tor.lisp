; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude exo_tor.msg.html

(cl:defclass <exo_tor> (roslisp-msg-protocol:ros-message)
  ((Data
    :reader Data
    :initarg :Data
    :type cl:float
    :initform 0.0))
)

(cl:defclass exo_tor (<exo_tor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <exo_tor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'exo_tor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<exo_tor> is deprecated: use msgpkg-msg:exo_tor instead.")))

(cl:ensure-generic-function 'Data-val :lambda-list '(m))
(cl:defmethod Data-val ((m <exo_tor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:Data-val is deprecated.  Use msgpkg-msg:Data instead.")
  (Data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <exo_tor>) ostream)
  "Serializes a message object of type '<exo_tor>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <exo_tor>) istream)
  "Deserializes a message object of type '<exo_tor>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Data) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<exo_tor>)))
  "Returns string type for a message object of type '<exo_tor>"
  "msgpkg/exo_tor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'exo_tor)))
  "Returns string type for a message object of type 'exo_tor"
  "msgpkg/exo_tor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<exo_tor>)))
  "Returns md5sum for a message object of type '<exo_tor>"
  "cdf0857c334d04631fd6716a8c4c2496")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'exo_tor)))
  "Returns md5sum for a message object of type 'exo_tor"
  "cdf0857c334d04631fd6716a8c4c2496")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<exo_tor>)))
  "Returns full string definition for message of type '<exo_tor>"
  (cl:format cl:nil "float32 Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'exo_tor)))
  "Returns full string definition for message of type 'exo_tor"
  (cl:format cl:nil "float32 Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <exo_tor>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <exo_tor>))
  "Converts a ROS message object to a list"
  (cl:list 'exo_tor
    (cl:cons ':Data (Data msg))
))
