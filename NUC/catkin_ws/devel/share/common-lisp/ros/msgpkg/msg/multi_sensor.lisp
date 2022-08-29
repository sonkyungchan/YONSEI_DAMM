; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude multi_sensor.msg.html

(cl:defclass <multi_sensor> (roslisp-msg-protocol:ros-message)
  ((Data1
    :reader Data1
    :initarg :Data1
    :type cl:integer
    :initform 0)
   (Data2
    :reader Data2
    :initarg :Data2
    :type cl:integer
    :initform 0)
   (Data3
    :reader Data3
    :initarg :Data3
    :type cl:integer
    :initform 0))
)

(cl:defclass multi_sensor (<multi_sensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <multi_sensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'multi_sensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<multi_sensor> is deprecated: use msgpkg-msg:multi_sensor instead.")))

(cl:ensure-generic-function 'Data1-val :lambda-list '(m))
(cl:defmethod Data1-val ((m <multi_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:Data1-val is deprecated.  Use msgpkg-msg:Data1 instead.")
  (Data1 m))

(cl:ensure-generic-function 'Data2-val :lambda-list '(m))
(cl:defmethod Data2-val ((m <multi_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:Data2-val is deprecated.  Use msgpkg-msg:Data2 instead.")
  (Data2 m))

(cl:ensure-generic-function 'Data3-val :lambda-list '(m))
(cl:defmethod Data3-val ((m <multi_sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:Data3-val is deprecated.  Use msgpkg-msg:Data3 instead.")
  (Data3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <multi_sensor>) ostream)
  "Serializes a message object of type '<multi_sensor>"
  (cl:let* ((signed (cl:slot-value msg 'Data1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Data2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Data3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <multi_sensor>) istream)
  "Deserializes a message object of type '<multi_sensor>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Data1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Data2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Data3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<multi_sensor>)))
  "Returns string type for a message object of type '<multi_sensor>"
  "msgpkg/multi_sensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'multi_sensor)))
  "Returns string type for a message object of type 'multi_sensor"
  "msgpkg/multi_sensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<multi_sensor>)))
  "Returns md5sum for a message object of type '<multi_sensor>"
  "6db23ffcc32ab1d35461ec471b4d6a77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'multi_sensor)))
  "Returns md5sum for a message object of type 'multi_sensor"
  "6db23ffcc32ab1d35461ec471b4d6a77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<multi_sensor>)))
  "Returns full string definition for message of type '<multi_sensor>"
  (cl:format cl:nil "int32 Data1~%int32 Data2~%int32 Data3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'multi_sensor)))
  "Returns full string definition for message of type 'multi_sensor"
  (cl:format cl:nil "int32 Data1~%int32 Data2~%int32 Data3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <multi_sensor>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <multi_sensor>))
  "Converts a ROS message object to a list"
  (cl:list 'multi_sensor
    (cl:cons ':Data1 (Data1 msg))
    (cl:cons ':Data2 (Data2 msg))
    (cl:cons ':Data3 (Data3 msg))
))
