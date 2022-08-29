;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::tactile)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'tactile (find-package "MSGPKG")))
(unless (find-package "MSGPKG::TACTILE")
  (make-package "MSGPKG::TACTILE"))

(in-package "ROS")
;;//! \htmlinclude tactile.msg.html


(defclass msgpkg::tactile
  :super ros::object
  :slots (_Data ))

(defmethod msgpkg::tactile
  (:init
   (&key
    ((:Data __Data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _Data __Data)
   self)
  (:Data
   (&optional __Data)
   (if __Data (setq _Data __Data)) _Data)
  (:serialization-length
   ()
   (+
    ;; int32[] _Data
    (* 4    (length _Data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _Data
     (write-long (length _Data) s)
     (dotimes (i (length _Data))
       (write-long (elt _Data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _Data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _Data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get msgpkg::tactile :md5sum-) "1285f0907f1195d9fc43c8c67aef173e")
(setf (get msgpkg::tactile :datatype-) "msgpkg/tactile")
(setf (get msgpkg::tactile :definition-)
      "int32[] Data

")



(provide :msgpkg/tactile "1285f0907f1195d9fc43c8c67aef173e")


