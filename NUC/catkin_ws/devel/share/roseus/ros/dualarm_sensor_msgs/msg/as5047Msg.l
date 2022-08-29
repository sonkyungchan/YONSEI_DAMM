;; Auto-generated. Do not edit!


(when (boundp 'dualarm_sensor_msgs::as5047Msg)
  (if (not (find-package "DUALARM_SENSOR_MSGS"))
    (make-package "DUALARM_SENSOR_MSGS"))
  (shadow 'as5047Msg (find-package "DUALARM_SENSOR_MSGS")))
(unless (find-package "DUALARM_SENSOR_MSGS::AS5047MSG")
  (make-package "DUALARM_SENSOR_MSGS::AS5047MSG"))

(in-package "ROS")
;;//! \htmlinclude as5047Msg.msg.html


(defclass dualarm_sensor_msgs::as5047Msg
  :super ros::object
  :slots (_mag_enc ))

(defmethod dualarm_sensor_msgs::as5047Msg
  (:init
   (&key
    ((:mag_enc __mag_enc) (make-array 4 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _mag_enc __mag_enc)
   self)
  (:mag_enc
   (&optional __mag_enc)
   (if __mag_enc (setq _mag_enc __mag_enc)) _mag_enc)
  (:serialization-length
   ()
   (+
    ;; int64[4] _mag_enc
    (* 8    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[4] _mag_enc
     (dotimes (i 4)
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _mag_enc i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _mag_enc i)) (= (length ((elt _mag_enc i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _mag_enc i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _mag_enc i) . bv) 1) -1) s))
             ((and (class (elt _mag_enc i)) (= (length ((elt _mag_enc i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _mag_enc i) . bv) 0) s)
              (write-long (if (>= (elt _mag_enc i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _mag_enc i) s)(write-long (if (>= (elt _mag_enc i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[4] _mag_enc
   (dotimes (i (length _mag_enc))
#+(or :alpha :irix6 :x86_64)
      (setf (elt _mag_enc i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _mag_enc i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     )
   ;;
   self)
  )

(setf (get dualarm_sensor_msgs::as5047Msg :md5sum-) "dd6c0dbc25f30dc6c77f0282a93fb98a")
(setf (get dualarm_sensor_msgs::as5047Msg :datatype-) "dualarm_sensor_msgs/as5047Msg")
(setf (get dualarm_sensor_msgs::as5047Msg :definition-)
      "int64[4] mag_enc

")



(provide :dualarm_sensor_msgs/as5047Msg "dd6c0dbc25f30dc6c77f0282a93fb98a")


