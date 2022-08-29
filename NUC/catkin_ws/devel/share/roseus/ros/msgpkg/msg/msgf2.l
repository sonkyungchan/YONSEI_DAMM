;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::msgf2)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'msgf2 (find-package "MSGPKG")))
(unless (find-package "MSGPKG::MSGF2")
  (make-package "MSGPKG::MSGF2"))

(in-package "ROS")
;;//! \htmlinclude msgf2.msg.html


(defclass msgpkg::msgf2
  :super ros::object
  :slots (_for2 ))

(defmethod msgpkg::msgf2
  (:init
   (&key
    ((:for2 __for2) 0.0)
    )
   (send-super :init)
   (setq _for2 (float __for2))
   self)
  (:for2
   (&optional __for2)
   (if __for2 (setq _for2 __for2)) _for2)
  (:serialization-length
   ()
   (+
    ;; float32 _for2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _for2
       (sys::poke _for2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _for2
     (setq _for2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgpkg::msgf2 :md5sum-) "055ebaaa36f43d418526ea4a0cc9f35e")
(setf (get msgpkg::msgf2 :datatype-) "msgpkg/msgf2")
(setf (get msgpkg::msgf2 :definition-)
      "float32 for2


")



(provide :msgpkg/msgf2 "055ebaaa36f43d418526ea4a0cc9f35e")


