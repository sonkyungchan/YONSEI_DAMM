;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::msgmag2)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'msgmag2 (find-package "MSGPKG")))
(unless (find-package "MSGPKG::MSGMAG2")
  (make-package "MSGPKG::MSGMAG2"))

(in-package "ROS")
;;//! \htmlinclude msgmag2.msg.html


(defclass msgpkg::msgmag2
  :super ros::object
  :slots (_mag2 ))

(defmethod msgpkg::msgmag2
  (:init
   (&key
    ((:mag2 __mag2) 0.0)
    )
   (send-super :init)
   (setq _mag2 (float __mag2))
   self)
  (:mag2
   (&optional __mag2)
   (if __mag2 (setq _mag2 __mag2)) _mag2)
  (:serialization-length
   ()
   (+
    ;; float32 _mag2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _mag2
       (sys::poke _mag2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _mag2
     (setq _mag2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgpkg::msgmag2 :md5sum-) "0bc0b38d8ef0e3a66f9ed02f56e05589")
(setf (get msgpkg::msgmag2 :datatype-) "msgpkg/msgmag2")
(setf (get msgpkg::msgmag2 :definition-)
      "float32 mag2

")



(provide :msgpkg/msgmag2 "0bc0b38d8ef0e3a66f9ed02f56e05589")


