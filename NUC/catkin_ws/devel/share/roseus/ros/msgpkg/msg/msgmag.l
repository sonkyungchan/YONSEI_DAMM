;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::msgmag)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'msgmag (find-package "MSGPKG")))
(unless (find-package "MSGPKG::MSGMAG")
  (make-package "MSGPKG::MSGMAG"))

(in-package "ROS")
;;//! \htmlinclude msgmag.msg.html


(defclass msgpkg::msgmag
  :super ros::object
  :slots (_mag ))

(defmethod msgpkg::msgmag
  (:init
   (&key
    ((:mag __mag) 0.0)
    )
   (send-super :init)
   (setq _mag (float __mag))
   self)
  (:mag
   (&optional __mag)
   (if __mag (setq _mag __mag)) _mag)
  (:serialization-length
   ()
   (+
    ;; float32 _mag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _mag
       (sys::poke _mag (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _mag
     (setq _mag (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgpkg::msgmag :md5sum-) "938244a09b40aebc4fca0d898d8e25f1")
(setf (get msgpkg::msgmag :datatype-) "msgpkg/msgmag")
(setf (get msgpkg::msgmag :definition-)
      "float32 mag

")



(provide :msgpkg/msgmag "938244a09b40aebc4fca0d898d8e25f1")


