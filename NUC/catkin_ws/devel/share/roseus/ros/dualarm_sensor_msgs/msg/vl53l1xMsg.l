;; Auto-generated. Do not edit!


(when (boundp 'dualarm_sensor_msgs::vl53l1xMsg)
  (if (not (find-package "DUALARM_SENSOR_MSGS"))
    (make-package "DUALARM_SENSOR_MSGS"))
  (shadow 'vl53l1xMsg (find-package "DUALARM_SENSOR_MSGS")))
(unless (find-package "DUALARM_SENSOR_MSGS::VL53L1XMSG")
  (make-package "DUALARM_SENSOR_MSGS::VL53L1XMSG"))

(in-package "ROS")
;;//! \htmlinclude vl53l1xMsg.msg.html


(defclass dualarm_sensor_msgs::vl53l1xMsg
  :super ros::object
  :slots (_laser ))

(defmethod dualarm_sensor_msgs::vl53l1xMsg
  (:init
   (&key
    ((:laser __laser) (make-array 3 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _laser __laser)
   self)
  (:laser
   (&optional __laser)
   (if __laser (setq _laser __laser)) _laser)
  (:serialization-length
   ()
   (+
    ;; uint16[3] _laser
    (* 2    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[3] _laser
     (dotimes (i 3)
       (write-word (elt _laser i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[3] _laser
   (dotimes (i (length _laser))
     (setf (elt _laser i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get dualarm_sensor_msgs::vl53l1xMsg :md5sum-) "c7f412389a37f112bb77ded6f7ffeb01")
(setf (get dualarm_sensor_msgs::vl53l1xMsg :datatype-) "dualarm_sensor_msgs/vl53l1xMsg")
(setf (get dualarm_sensor_msgs::vl53l1xMsg :definition-)
      "uint16[3] laser

")



(provide :dualarm_sensor_msgs/vl53l1xMsg "c7f412389a37f112bb77ded6f7ffeb01")


