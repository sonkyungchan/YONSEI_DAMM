
(cl:in-package :asdf)

(defsystem "mobile_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "base_arm_pose" :depends-on ("_package_base_arm_pose"))
    (:file "_package_base_arm_pose" :depends-on ("_package"))
    (:file "motorMsg" :depends-on ("_package_motorMsg"))
    (:file "_package_motorMsg" :depends-on ("_package"))
  ))