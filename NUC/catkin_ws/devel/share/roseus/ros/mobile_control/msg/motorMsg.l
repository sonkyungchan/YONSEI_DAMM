;; Auto-generated. Do not edit!


(when (boundp 'mobile_control::motorMsg)
  (if (not (find-package "MOBILE_CONTROL"))
    (make-package "MOBILE_CONTROL"))
  (shadow 'motorMsg (find-package "MOBILE_CONTROL")))
(unless (find-package "MOBILE_CONTROL::MOTORMSG")
  (make-package "MOBILE_CONTROL::MOTORMSG"))

(in-package "ROS")
;;//! \htmlinclude motorMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mobile_control::motorMsg
  :super ros::object
  :slots (_header _omega1 _omega2 _omega3 _omega4 ))

(defmethod mobile_control::motorMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:omega1 __omega1) 0)
    ((:omega2 __omega2) 0)
    ((:omega3 __omega3) 0)
    ((:omega4 __omega4) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _omega1 (round __omega1))
   (setq _omega2 (round __omega2))
   (setq _omega3 (round __omega3))
   (setq _omega4 (round __omega4))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:omega1
   (&optional __omega1)
   (if __omega1 (setq _omega1 __omega1)) _omega1)
  (:omega2
   (&optional __omega2)
   (if __omega2 (setq _omega2 __omega2)) _omega2)
  (:omega3
   (&optional __omega3)
   (if __omega3 (setq _omega3 __omega3)) _omega3)
  (:omega4
   (&optional __omega4)
   (if __omega4 (setq _omega4 __omega4)) _omega4)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _omega1
    4
    ;; int32 _omega2
    4
    ;; int32 _omega3
    4
    ;; int32 _omega4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _omega1
       (write-long _omega1 s)
     ;; int32 _omega2
       (write-long _omega2 s)
     ;; int32 _omega3
       (write-long _omega3 s)
     ;; int32 _omega4
       (write-long _omega4 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _omega1
     (setq _omega1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _omega2
     (setq _omega2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _omega3
     (setq _omega3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _omega4
     (setq _omega4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mobile_control::motorMsg :md5sum-) "cc96ee74795dd87ba70013bf55e8a168")
(setf (get mobile_control::motorMsg :datatype-) "mobile_control/motorMsg")
(setf (get mobile_control::motorMsg :definition-)
      "Header header

int32 omega1
int32 omega2
int32 omega3
int32 omega4

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :mobile_control/motorMsg "cc96ee74795dd87ba70013bf55e8a168")


