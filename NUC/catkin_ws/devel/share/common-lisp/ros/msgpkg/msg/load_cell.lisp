; Auto-generated. Do not edit!


(cl:in-package msgpkg-msg)


;//! \htmlinclude load_cell.msg.html

(cl:defclass <load_cell> (roslisp-msg-protocol:ros-message)
  ((Data
    :reader Data
    :initarg :Data
    :type cl:float
    :initform 0.0))
)

(cl:defclass load_cell (<load_cell>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <load_cell>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'load_cell)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgpkg-msg:<load_cell> is deprecated: use msgpkg-msg:load_cell instead.")))

(cl:ensure-generic-function 'Data-val :lambda-list '(m))
(cl:defmethod Data-val ((m <load_cell>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgpkg-msg:Data-val is deprecated.  Use msgpkg-msg:Data instead.")
  (Data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <load_cell>) ostream)
  "Serializes a message object of type '<load_cell>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <load_cell>) istream)
  "Deserializes a message object of type '<load_cell>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Data) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<load_cell>)))
  "Returns string type for a message object of type '<load_cell>"
  "msgpkg/load_cell")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'load_cell)))
  "Returns string type for a message object of type 'load_cell"
  "msgpkg/load_cell")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<load_cell>)))
  "Returns md5sum for a message object of type '<load_cell>"
  "cdf0857c334d04631fd6716a8c4c2496")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'load_cell)))
  "Returns md5sum for a message object of type 'load_cell"
  "cdf0857c334d04631fd6716a8c4c2496")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<load_cell>)))
  "Returns full string definition for message of type '<load_cell>"
  (cl:format cl:nil "float32 Data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'load_cell)))
  "Returns full string definition for message of type 'load_cell"
  (cl:format cl:nil "float32 Data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <load_cell>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <load_cell>))
  "Converts a ROS message object to a list"
  (cl:list 'load_cell
    (cl:cons ':Data (Data msg))
))
