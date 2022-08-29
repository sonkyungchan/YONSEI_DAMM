;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::fabric)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'fabric (find-package "MSGPKG")))
(unless (find-package "MSGPKG::FABRIC")
  (make-package "MSGPKG::FABRIC"))

(in-package "ROS")
;;//! \htmlinclude fabric.msg.html


(defclass msgpkg::fabric
  :super ros::object
  :slots (_Data1 _Data2 ))

(defmethod msgpkg::fabric
  (:init
   (&key
    ((:Data1 __Data1) 0)
    ((:Data2 __Data2) 0)
    )
   (send-super :init)
   (setq _Data1 (round __Data1))
   (setq _Data2 (round __Data2))
   self)
  (:Data1
   (&optional __Data1)
   (if __Data1 (setq _Data1 __Data1)) _Data1)
  (:Data2
   (&optional __Data2)
   (if __Data2 (setq _Data2 __Data2)) _Data2)
  (:serialization-length
   ()
   (+
    ;; int32 _Data1
    4
    ;; int32 _Data2
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Data1
     (setq _Data1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Data2
     (setq _Data2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgpkg::fabric :md5sum-) "b586c67171812310749927e0856b34be")
(setf (get msgpkg::fabric :datatype-) "msgpkg/fabric")
(setf (get msgpkg::fabric :definition-)
      "int32 Data1
int32 Data2


")



(provide :msgpkg/fabric "b586c67171812310749927e0856b34be")


