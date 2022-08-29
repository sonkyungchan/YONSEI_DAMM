;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::msgtor)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'msgtor (find-package "MSGPKG")))
(unless (find-package "MSGPKG::MSGTOR")
  (make-package "MSGPKG::MSGTOR"))

(in-package "ROS")
;;//! \htmlinclude msgtor.msg.html


(defclass msgpkg::msgtor
  :super ros::object
  :slots (_tor ))

(defmethod msgpkg::msgtor
  (:init
   (&key
    ((:tor __tor) 0.0)
    )
   (send-super :init)
   (setq _tor (float __tor))
   self)
  (:tor
   (&optional __tor)
   (if __tor (setq _tor __tor)) _tor)
  (:serialization-length
   ()
   (+
    ;; float32 _tor
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _tor
       (sys::poke _tor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _tor
     (setq _tor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgpkg::msgtor :md5sum-) "087bb50d3e0b88ee3559c736b6ddf16b")
(setf (get msgpkg::msgtor :datatype-) "msgpkg/msgtor")
(setf (get msgpkg::msgtor :definition-)
      "float32 tor

")



(provide :msgpkg/msgtor "087bb50d3e0b88ee3559c736b6ddf16b")


