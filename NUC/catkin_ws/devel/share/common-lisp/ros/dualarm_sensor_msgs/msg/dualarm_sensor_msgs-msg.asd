
(cl:in-package :asdf)

(defsystem "dualarm_sensor_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "as5047Msg" :depends-on ("_package_as5047Msg"))
    (:file "_package_as5047Msg" :depends-on ("_package"))
    (:file "vl53l1xMsg" :depends-on ("_package_vl53l1xMsg"))
    (:file "_package_vl53l1xMsg" :depends-on ("_package"))
  ))