;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::angle_finger2)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'angle_finger2 (find-package "MSGPKG")))
(unless (find-package "MSGPKG::ANGLE_FINGER2")
  (make-package "MSGPKG::ANGLE_FINGER2"))

(in-package "ROS")
;;//! \htmlinclude angle_finger2.msg.html


(defclass msgpkg::angle_finger2
  :super ros::object
  :slots (_Data1 _Data2 ))

(defmethod msgpkg::angle_finger2
  (:init
   (&key
    ((:Data1 __Data1) 0.0)
    ((:Data2 __Data2) 0.0)
    )
   (send-super :init)
   (setq _Data1 (float __Data1))
   (setq _Data2 (float __Data2))
   self)
  (:Data1
   (&optional __Data1)
   (if __Data1 (setq _Data1 __Data1)) _Data1)
  (:Data2
   (&optional __Data2)
   (if __Data2 (setq _Data2 __Data2)) _Data2)
  (:serialization-length
   ()
   (+
    ;; float32 _Data1
    4
    ;; float32 _Data2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Data1
       (sys::poke _Data1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Data2
       (sys::poke _Data2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Data1
     (setq _Data1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Data2
     (setq _Data2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgpkg::angle_finger2 :md5sum-) "367b263b399638238803cd74c6366c91")
(setf (get msgpkg::angle_finger2 :datatype-) "msgpkg/angle_finger2")
(setf (get msgpkg::angle_finger2 :definition-)
      "float32 Data1
float32 Data2

")



(provide :msgpkg/angle_finger2 "367b263b399638238803cd74c6366c91")


