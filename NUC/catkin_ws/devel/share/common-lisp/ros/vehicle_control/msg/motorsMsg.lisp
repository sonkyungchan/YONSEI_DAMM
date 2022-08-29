; Auto-generated. Do not edit!


(cl:in-package vehicle_control-msg)


;//! \htmlinclude motorsMsg.msg.html

(cl:defclass <motorsMsg> (roslisp-msg-protocol:ros-message)
  ((omega1
    :reader omega1
    :initarg :omega1
    :type cl:integer
    :initform 0)
   (omega2
    :reader omega2
    :initarg :omega2
    :type cl:integer
    :initform 0)
   (omega3
    :reader omega3
    :initarg :omega3
    :type cl:integer
    :initform 0)
   (omega4
    :reader omega4
    :initarg :omega4
    :type cl:integer
    :initform 0))
)

(cl:defclass motorsMsg (<motorsMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motorsMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motorsMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_control-msg:<motorsMsg> is deprecated: use vehicle_control-msg:motorsMsg instead.")))

(cl:ensure-generic-function 'omega1-val :lambda-list '(m))
(cl:defmethod omega1-val ((m <motorsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_control-msg:omega1-val is deprecated.  Use vehicle_control-msg:omega1 instead.")
  (omega1 m))

(cl:ensure-generic-function 'omega2-val :lambda-list '(m))
(cl:defmethod omega2-val ((m <motorsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_control-msg:omega2-val is deprecated.  Use vehicle_control-msg:omega2 instead.")
  (omega2 m))

(cl:ensure-generic-function 'omega3-val :lambda-list '(m))
(cl:defmethod omega3-val ((m <motorsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_control-msg:omega3-val is deprecated.  Use vehicle_control-msg:omega3 instead.")
  (omega3 m))

(cl:ensure-generic-function 'omega4-val :lambda-list '(m))
(cl:defmethod omega4-val ((m <motorsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_control-msg:omega4-val is deprecated.  Use vehicle_control-msg:omega4 instead.")
  (omega4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motorsMsg>) ostream)
  "Serializes a message object of type '<motorsMsg>"
  (cl:let* ((signed (cl:slot-value msg 'omega1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'omega2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'omega3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'omega4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motorsMsg>) istream)
  "Deserializes a message object of type '<motorsMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'omega1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'omega2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'omega3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'omega4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motorsMsg>)))
  "Returns string type for a message object of type '<motorsMsg>"
  "vehicle_control/motorsMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motorsMsg)))
  "Returns string type for a message object of type 'motorsMsg"
  "vehicle_control/motorsMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motorsMsg>)))
  "Returns md5sum for a message object of type '<motorsMsg>"
  "6310bddbb1f6c6ea47b30f0419b43b5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motorsMsg)))
  "Returns md5sum for a message object of type 'motorsMsg"
  "6310bddbb1f6c6ea47b30f0419b43b5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motorsMsg>)))
  "Returns full string definition for message of type '<motorsMsg>"
  (cl:format cl:nil "int32 omega1~%int32 omega2~%int32 omega3~%int32 omega4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motorsMsg)))
  "Returns full string definition for message of type 'motorsMsg"
  (cl:format cl:nil "int32 omega1~%int32 omega2~%int32 omega3~%int32 omega4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motorsMsg>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motorsMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'motorsMsg
    (cl:cons ':omega1 (omega1 msg))
    (cl:cons ':omega2 (omega2 msg))
    (cl:cons ':omega3 (omega3 msg))
    (cl:cons ':omega4 (omega4 msg))
))
