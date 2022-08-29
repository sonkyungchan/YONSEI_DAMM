;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::gripper_dis)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'gripper_dis (find-package "MSGPKG")))
(unless (find-package "MSGPKG::GRIPPER_DIS")
  (make-package "MSGPKG::GRIPPER_DIS"))

(in-package "ROS")
;;//! \htmlinclude gripper_dis.msg.html


(defclass msgpkg::gripper_dis
  :super ros::object
  :slots (_gripper_dis ))

(defmethod msgpkg::gripper_dis
  (:init
   (&key
    ((:gripper_dis __gripper_dis) 0.0)
    )
   (send-super :init)
   (setq _gripper_dis (float __gripper_dis))
   self)
  (:gripper_dis
   (&optional __gripper_dis)
   (if __gripper_dis (setq _gripper_dis __gripper_dis)) _gripper_dis)
  (:serialization-length
   ()
   (+
    ;; float64 _gripper_dis
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _gripper_dis
       (sys::poke _gripper_dis (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _gripper_dis
     (setq _gripper_dis (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get msgpkg::gripper_dis :md5sum-) "fe37c961195d22e6ba99189474288c9c")
(setf (get msgpkg::gripper_dis :datatype-) "msgpkg/gripper_dis")
(setf (get msgpkg::gripper_dis :definition-)
      "float64 gripper_dis

")



(provide :msgpkg/gripper_dis "fe37c961195d22e6ba99189474288c9c")


