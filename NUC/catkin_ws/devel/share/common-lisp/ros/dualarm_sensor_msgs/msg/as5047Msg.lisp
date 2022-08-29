; Auto-generated. Do not edit!


(cl:in-package dualarm_sensor_msgs-msg)


;//! \htmlinclude as5047Msg.msg.html

(cl:defclass <as5047Msg> (roslisp-msg-protocol:ros-message)
  ((mag_enc
    :reader mag_enc
    :initarg :mag_enc
    :type (cl:vector cl:integer)
   :initform (cl:make-array 4 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass as5047Msg (<as5047Msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <as5047Msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'as5047Msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dualarm_sensor_msgs-msg:<as5047Msg> is deprecated: use dualarm_sensor_msgs-msg:as5047Msg instead.")))

(cl:ensure-generic-function 'mag_enc-val :lambda-list '(m))
(cl:defmethod mag_enc-val ((m <as5047Msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dualarm_sensor_msgs-msg:mag_enc-val is deprecated.  Use dualarm_sensor_msgs-msg:mag_enc instead.")
  (mag_enc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <as5047Msg>) ostream)
  "Serializes a message object of type '<as5047Msg>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'mag_enc))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <as5047Msg>) istream)
  "Deserializes a message object of type '<as5047Msg>"
  (cl:setf (cl:slot-value msg 'mag_enc) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'mag_enc)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<as5047Msg>)))
  "Returns string type for a message object of type '<as5047Msg>"
  "dualarm_sensor_msgs/as5047Msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'as5047Msg)))
  "Returns string type for a message object of type 'as5047Msg"
  "dualarm_sensor_msgs/as5047Msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<as5047Msg>)))
  "Returns md5sum for a message object of type '<as5047Msg>"
  "dd6c0dbc25f30dc6c77f0282a93fb98a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'as5047Msg)))
  "Returns md5sum for a message object of type 'as5047Msg"
  "dd6c0dbc25f30dc6c77f0282a93fb98a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<as5047Msg>)))
  "Returns full string definition for message of type '<as5047Msg>"
  (cl:format cl:nil "int64[4] mag_enc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'as5047Msg)))
  "Returns full string definition for message of type 'as5047Msg"
  (cl:format cl:nil "int64[4] mag_enc~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <as5047Msg>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'mag_enc) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <as5047Msg>))
  "Converts a ROS message object to a list"
  (cl:list 'as5047Msg
    (cl:cons ':mag_enc (mag_enc msg))
))
