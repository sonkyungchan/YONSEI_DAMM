;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::angle_finger)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'angle_finger (find-package "MSGPKG")))
(unless (find-package "MSGPKG::ANGLE_FINGER")
  (make-package "MSGPKG::ANGLE_FINGER"))

(in-package "ROS")
;;//! \htmlinclude angle_finger.msg.html


(defclass msgpkg::angle_finger
  :super ros::object
  :slots (_Data ))

(defmethod msgpkg::angle_finger
  (:init
   (&key
    ((:Data __Data) 0.0)
    )
   (send-super :init)
   (setq _Data (float __Data))
   self)
  (:Data
   (&optional __Data)
   (if __Data (setq _Data __Data)) _Data)
  (:serialization-length
   ()
   (+
    ;; float32 _Data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Data
       (sys::poke _Data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Data
     (setq _Data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgpkg::angle_finger :md5sum-) "cdf0857c334d04631fd6716a8c4c2496")
(setf (get msgpkg::angle_finger :datatype-) "msgpkg/angle_finger")
(setf (get msgpkg::angle_finger :definition-)
      "float32 Data

")



(provide :msgpkg/angle_finger "cdf0857c334d04631fd6716a8c4c2496")

