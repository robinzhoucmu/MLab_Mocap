
(cl:in-package :asdf)

(defsystem "Mocap-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "mocap_frame" :depends-on ("_package_mocap_frame"))
    (:file "_package_mocap_frame" :depends-on ("_package"))
  ))