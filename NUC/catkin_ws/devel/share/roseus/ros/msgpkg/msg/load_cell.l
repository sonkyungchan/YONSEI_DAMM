;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::load_cell)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'load_cell (find-package "MSGPKG")))
(unless (find-package "MSGPKG::LOAD_CELL")
  (make-package "MSGPKG::LOAD_CELL"))

(in-package "ROS")
;;//! \htmlinclude load_cell.msg.html


(defclass msgpkg::load_cell
  :super ros::object
  :slots (_Data ))

(defmethod msgpkg::load_cell
  (:init
   (&key
    ((:Data __Data) 0.0)
    )
   (send-super :init)
   (setq _Data (float __Data))
   self)
  (:Data
   (&optional __Data)
   (if __Data (setq _Data __Data)) _Data)
  (:serialization-length
   ()
   (+
    ;; float32 _Data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Data
       (sys::poke _Data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Data
     (setq _Data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get msgpkg::load_cell :md5sum-) "cdf0857c334d04631fd6716a8c4c2496")
(setf (get msgpkg::load_cell :datatype-) "msgpkg/load_cell")
(setf (get msgpkg::load_cell :definition-)
      "float32 Data


")



(provide :msgpkg/load_cell "cdf0857c334d04631fd6716a8c4c2496")


