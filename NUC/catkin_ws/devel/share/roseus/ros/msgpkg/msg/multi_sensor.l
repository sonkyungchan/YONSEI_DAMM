;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::multi_sensor)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'multi_sensor (find-package "MSGPKG")))
(unless (find-package "MSGPKG::MULTI_SENSOR")
  (make-package "MSGPKG::MULTI_SENSOR"))

(in-package "ROS")
;;//! \htmlinclude multi_sensor.msg.html


(defclass msgpkg::multi_sensor
  :super ros::object
  :slots (_Data1 _Data2 _Data3 ))

(defmethod msgpkg::multi_sensor
  (:init
   (&key
    ((:Data1 __Data1) 0)
    ((:Data2 __Data2) 0)
    ((:Data3 __Data3) 0)
    )
   (send-super :init)
   (setq _Data1 (round __Data1))
   (setq _Data2 (round __Data2))
   (setq _Data3 (round __Data3))
   self)
  (:Data1
   (&optional __Data1)
   (if __Data1 (setq _Data1 __Data1)) _Data1)
  (:Data2
   (&optional __Data2)
   (if __Data2 (setq _Data2 __Data2)) _Data2)
  (:Data3
   (&optional __Data3)
   (if __Data3 (setq _Data3 __Data3)) _Data3)
  (:serialization-length
   ()
   (+
    ;; int32 _Data1
    4
    ;; int32 _Data2
    4
    ;; int32 _Data3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _Data1
       (write-long _Data1 s)
     ;; int32 _Data2
       (write-long _Data2 s)
     ;; int32 _Data3
       (write-long _Data3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Data1
     (setq _Data1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Data2
     (setq _Data2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Data3
     (setq _Data3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgpkg::multi_sensor :md5sum-) "6db23ffcc32ab1d35461ec471b4d6a77")
(setf (get msgpkg::multi_sensor :datatype-) "msgpkg/multi_sensor")
(setf (get msgpkg::multi_sensor :definition-)
      "int32 Data1
int32 Data2
int32 Data3

")



(provide :msgpkg/multi_sensor "6db23ffcc32ab1d35461ec471b4d6a77")


