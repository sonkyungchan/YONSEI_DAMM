
(cl:in-package :asdf)

(defsystem "vehicle_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "motorsMsg" :depends-on ("_package_motorsMsg"))
    (:file "_package_motorsMsg" :depends-on ("_package"))
  ))