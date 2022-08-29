;; Auto-generated. Do not edit!


(when (boundp 'vehicle_control::motorsMsg)
  (if (not (find-package "VEHICLE_CONTROL"))
    (make-package "VEHICLE_CONTROL"))
  (shadow 'motorsMsg (find-package "VEHICLE_CONTROL")))
(unless (find-package "VEHICLE_CONTROL::MOTORSMSG")
  (make-package "VEHICLE_CONTROL::MOTORSMSG"))

(in-package "ROS")
;;//! \htmlinclude motorsMsg.msg.html


(defclass vehicle_control::motorsMsg
  :super ros::object
  :slots (_omega1 _omega2 _omega3 _omega4 ))

(defmethod vehicle_control::motorsMsg
  (:init
   (&key
    ((:omega1 __omega1) 0)
    ((:omega2 __omega2) 0)
    ((:omega3 __omega3) 0)
    ((:omega4 __omega4) 0)
    )
   (send-super :init)
   (setq _omega1 (round __omega1))
   (setq _omega2 (round __omega2))
   (setq _omega3 (round __omega3))
   (setq _omega4 (round __omega4))
   self)
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

(setf (get vehicle_control::motorsMsg :md5sum-) "6310bddbb1f6c6ea47b30f0419b43b5a")
(setf (get vehicle_control::motorsMsg :datatype-) "vehicle_control/motorsMsg")
(setf (get vehicle_control::motorsMsg :definition-)
      "int32 omega1
int32 omega2
int32 omega3
int32 omega4

")



(provide :vehicle_control/motorsMsg "6310bddbb1f6c6ea47b30f0419b43b5a")


