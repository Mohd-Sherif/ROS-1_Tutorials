
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "V2V" :depends-on ("_package_V2V"))
    (:file "_package_V2V" :depends-on ("_package"))
  ))