;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::Val)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'Val (find-package "MSGPKG")))
(unless (find-package "MSGPKG::VAL")
  (make-package "MSGPKG::VAL"))

(in-package "ROS")
;;//! \htmlinclude Val.msg.html


(defclass msgpkg::Val
  :super ros::object
  :slots (_position ))

(defmethod msgpkg::Val
  (:init
   (&key
    ((:position __position) 0.0)
    )
   (send-super :init)
   (setq _position (float __position))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; float32 _position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgpkg::Val :md5sum-) "e4e11b3af29ed247b2bd150d3f4540f9")
(setf (get msgpkg::Val :datatype-) "msgpkg/Val")
(setf (get msgpkg::Val :definition-)
      "float32 position

")



(provide :msgpkg/Val "e4e11b3af29ed247b2bd150d3f4540f9")


