; Auto-generated. Do not edit!


(cl:in-package dualarm_sensor_msgs-msg)


;//! \htmlinclude vl53l1xMsg.msg.html

(cl:defclass <vl53l1xMsg> (roslisp-msg-protocol:ros-message)
  ((laser
    :reader laser
    :initarg :laser
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass vl53l1xMsg (<vl53l1xMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vl53l1xMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vl53l1xMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dualarm_sensor_msgs-msg:<vl53l1xMsg> is deprecated: use dualarm_sensor_msgs-msg:vl53l1xMsg instead.")))

(cl:ensure-generic-function 'laser-val :lambda-list '(m))
(cl:defmethod laser-val ((m <vl53l1xMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dualarm_sensor_msgs-msg:laser-val is deprecated.  Use dualarm_sensor_msgs-msg:laser instead.")
  (laser m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vl53l1xMsg>) ostream)
  "Serializes a message object of type '<vl53l1xMsg>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'laser))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vl53l1xMsg>) istream)
  "Deserializes a message object of type '<vl53l1xMsg>"
  (cl:setf (cl:slot-value msg 'laser) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'laser)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vl53l1xMsg>)))
  "Returns string type for a message object of type '<vl53l1xMsg>"
  "dualarm_sensor_msgs/vl53l1xMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vl53l1xMsg)))
  "Returns string type for a message object of type 'vl53l1xMsg"
  "dualarm_sensor_msgs/vl53l1xMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vl53l1xMsg>)))
  "Returns md5sum for a message object of type '<vl53l1xMsg>"
  "c7f412389a37f112bb77ded6f7ffeb01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vl53l1xMsg)))
  "Returns md5sum for a message object of type 'vl53l1xMsg"
  "c7f412389a37f112bb77ded6f7ffeb01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vl53l1xMsg>)))
  "Returns full string definition for message of type '<vl53l1xMsg>"
  (cl:format cl:nil "uint16[3] laser~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vl53l1xMsg)))
  "Returns full string definition for message of type 'vl53l1xMsg"
  (cl:format cl:nil "uint16[3] laser~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vl53l1xMsg>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'laser) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vl53l1xMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'vl53l1xMsg
    (cl:cons ':laser (laser msg))
))
