; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude angle_finger2.msg.html

(cl:defclass <angle_finger2> (roslisp-msg-protocol:ros-message)
  ((Data1
    :reader Data1
    :initarg :Data1
    :type cl:float
    :initform 0.0)
   (Data2
    :reader Data2
    :initarg :Data2
    :type cl:float
    :initform 0.0))
)

(cl:defclass angle_finger2 (<angle_finger2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <angle_finger2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'angle_finger2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<angle_finger2> is deprecated: use msgpkg-msg:angle_finger2 instead.")))

(cl:ensure-generic-function 'Data1-val :lambda-list '(m))
(cl:defmethod Data1-val ((m <angle_finger2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:Data1-val is deprecated.  Use msgpkg-msg:Data1 instead.")
  (Data1 m))

(cl:ensure-generic-function 'Data2-val :lambda-list '(m))
(cl:defmethod Data2-val ((m <angle_finger2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:Data2-val is deprecated.  Use msgpkg-msg:Data2 instead.")
  (Data2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <angle_finger2>) ostream)
  "Serializes a message object of type '<angle_finger2>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Data1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Data2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <angle_finger2>) istream)
  "Deserializes a message object of type '<angle_finger2>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Data1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Data2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<angle_finger2>)))
  "Returns string type for a message object of type '<angle_finger2>"
  "msgpkg/angle_finger2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angle_finger2)))
  "Returns string type for a message object of type 'angle_finger2"
  "msgpkg/angle_finger2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<angle_finger2>)))
  "Returns md5sum for a message object of type '<angle_finger2>"
  "367b263b399638238803cd74c6366c91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'angle_finger2)))
  "Returns md5sum for a message object of type 'angle_finger2"
  "367b263b399638238803cd74c6366c91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<angle_finger2>)))
  "Returns full string definition for message of type '<angle_finger2>"
  (cl:format cl:nil "float32 Data1~%float32 Data2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'angle_finger2)))
  "Returns full string definition for message of type 'angle_finger2"
  (cl:format cl:nil "float32 Data1~%float32 Data2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <angle_finger2>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <angle_finger2>))
  "Converts a ROS message object to a list"
  (cl:list 'angle_finger2
    (cl:cons ':Data1 (Data1 msg))
    (cl:cons ':Data2 (Data2 msg))
))
