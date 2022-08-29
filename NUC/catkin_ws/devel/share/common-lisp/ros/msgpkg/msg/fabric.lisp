; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude fabric.msg.html

(cl:defclass <fabric> (roslisp-msg-protocol:ros-message)
  ((Data1
    :reader Data1
    :initarg :Data1
    :type cl:integer
    :initform 0)
   (Data2
    :reader Data2
    :initarg :Data2
    :type cl:integer
    :initform 0))
)

(cl:defclass fabric (<fabric>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fabric>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fabric)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<fabric> is deprecated: use msgpkg-msg:fabric instead.")))

(cl:ensure-generic-function 'Data1-val :lambda-list '(m))
(cl:defmethod Data1-val ((m <fabric>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:Data1-val is deprecated.  Use msgpkg-msg:Data1 instead.")
  (Data1 m))

(cl:ensure-generic-function 'Data2-val :lambda-list '(m))
(cl:defmethod Data2-val ((m <fabric>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:Data2-val is deprecated.  Use msgpkg-msg:Data2 instead.")
  (Data2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fabric>) ostream)
  "Serializes a message object of type '<fabric>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fabric>) istream)
  "Deserializes a message object of type '<fabric>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fabric>)))
  "Returns string type for a message object of type '<fabric>"
  "msgpkg/fabric")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fabric)))
  "Returns string type for a message object of type 'fabric"
  "msgpkg/fabric")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fabric>)))
  "Returns md5sum for a message object of type '<fabric>"
  "b586c67171812310749927e0856b34be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fabric)))
  "Returns md5sum for a message object of type 'fabric"
  "b586c67171812310749927e0856b34be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fabric>)))
  "Returns full string definition for message of type '<fabric>"
  (cl:format cl:nil "int32 Data1~%int32 Data2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fabric)))
  "Returns full string definition for message of type 'fabric"
  (cl:format cl:nil "int32 Data1~%int32 Data2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fabric>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fabric>))
  "Converts a ROS message object to a list"
  (cl:list 'fabric
    (cl:cons ':Data1 (Data1 msg))
    (cl:cons ':Data2 (Data2 msg))
))
