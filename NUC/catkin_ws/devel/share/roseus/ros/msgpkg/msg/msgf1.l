;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::msgf1)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'msgf1 (find-package "MSGPKG")))
(unless (find-package "MSGPKG::MSGF1")
  (make-package "MSGPKG::MSGF1"))

(in-package "ROS")
;;//! \htmlinclude msgf1.msg.html


(defclass msgpkg::msgf1
  :super ros::object
  :slots (_for1 ))

(defmethod msgpkg::msgf1
  (:init
   (&key
    ((:for1 __for1) 0.0)
    )
   (send-super :init)
   (setq _for1 (float __for1))
   self)
  (:for1
   (&optional __for1)
   (if __for1 (setq _for1 __for1)) _for1)
  (:serialization-length
   ()
   (+
    ;; float32 _for1
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _for1
       (sys::poke _for1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _for1
     (setq _for1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgpkg::msgf1 :md5sum-) "e496f6ad40f2ceb95bb6fa115defb5e7")
(setf (get msgpkg::msgf1 :datatype-) "msgpkg/msgf1")
(setf (get msgpkg::msgf1 :definition-)
      "float32 for1


")



(provide :msgpkg/msgf1 "e496f6ad40f2ceb95bb6fa115defb5e7")


