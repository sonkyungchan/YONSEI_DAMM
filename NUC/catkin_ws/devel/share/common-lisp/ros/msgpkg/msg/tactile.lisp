; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude tactile.msg.html

(cl:defclass <tactile> (roslisp-msg-protocol:ros-message)
  ((Data
    :reader Data
    :initarg :Data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass tactile (<tactile>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tactile>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tactile)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<tactile> is deprecated: use msgpkg-msg:tactile instead.")))

(cl:ensure-generic-function 'Data-val :lambda-list '(m))
(cl:defmethod Data-val ((m <tactile>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:Data-val is deprecated.  Use msgpkg-msg:Data instead.")
  (Data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tactile>) ostream)
  "Serializes a message object of type '<tactile>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'Data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tactile>) istream)
  "Deserializes a message object of type '<tactile>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tactile>)))
  "Returns string type for a message object of type '<tactile>"
  "msgpkg/tactile")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tactile)))
  "Returns string type for a message object of type 'tactile"
  "msgpkg/tactile")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tactile>)))
  "Returns md5sum for a message object of type '<tactile>"
  "1285f0907f1195d9fc43c8c67aef173e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tactile)))
  "Returns md5sum for a message object of type 'tactile"
  "1285f0907f1195d9fc43c8c67aef173e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tactile>)))
  "Returns full string definition for message of type '<tactile>"
  (cl:format cl:nil "int32[] Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tactile)))
  "Returns full string definition for message of type 'tactile"
  (cl:format cl:nil "int32[] Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tactile>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tactile>))
  "Converts a ROS message object to a list"
  (cl:list 'tactile
    (cl:cons ':Data (Data msg))
))
