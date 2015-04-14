
(cl:in-package :asdf)

(defsystem "Mocap-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :Mocap-msg
)
  :components ((:file "_package")
    (:file "mocap_GetMocapFrame" :depends-on ("_package_mocap_GetMocapFrame"))
    (:file "_package_mocap_GetMocapFrame" :depends-on ("_package"))
    (:file "mocap_GetMocapTransformation" :depends-on ("_package_mocap_GetMocapTransformation"))
    (:file "_package_mocap_GetMocapTransformation" :depends-on ("_package"))
    (:file "mocap_SetMocapTransformation" :depends-on ("_package_mocap_SetMocapTransformation"))
    (:file "_package_mocap_SetMocapTransformation" :depends-on ("_package"))
    (:file "mocap_SetObjTransformation" :depends-on ("_package_mocap_SetObjTransformation"))
    (:file "_package_mocap_SetObjTransformation" :depends-on ("_package"))
  ))