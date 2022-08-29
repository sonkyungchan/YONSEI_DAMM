;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::msgtor2)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'msgtor2 (find-package "MSGPKG")))
(unless (find-package "MSGPKG::MSGTOR2")
  (make-package "MSGPKG::MSGTOR2"))

(in-package "ROS")
;;//! \htmlinclude msgtor2.msg.html


(defclass msgpkg::msgtor2
  :super ros::object
  :slots (_tor1 _tor2 ))

(defmethod msgpkg::msgtor2
  (:init
   (&key
    ((:tor1 __tor1) 0.0)
    ((:tor2 __tor2) 0.0)
    )
   (send-super :init)
   (setq _tor1 (float __tor1))
   (setq _tor2 (float __tor2))
   self)
  (:tor1
   (&optional __tor1)
   (if __tor1 (setq _tor1 __tor1)) _tor1)
  (:tor2
   (&optional __tor2)
   (if __tor2 (setq _tor2 __tor2)) _tor2)
  (:serialization-length
   ()
   (+
    ;; float32 _tor1
    4
    ;; float32 _tor2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _tor1
       (sys::poke _tor1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tor2
       (sys::poke _tor2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _tor1
     (setq _tor1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tor2
     (setq _tor2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgpkg::msgtor2 :md5sum-) "2c696c86de69c5c7b67b06aa4153bc27")
(setf (get msgpkg::msgtor2 :datatype-) "msgpkg/msgtor2")
(setf (get msgpkg::msgtor2 :definition-)
      "float32 tor1
float32 tor2

")



(provide :msgpkg/msgtor2 "2c696c86de69c5c7b67b06aa4153bc27")


