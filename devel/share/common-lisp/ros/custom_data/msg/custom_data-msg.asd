
(cl:in-package :asdf)

(defsystem "custom_data-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ClientArray" :depends-on ("_package_ClientArray"))
    (:file "_package_ClientArray" :depends-on ("_package"))
    (:file "Client" :depends-on ("_package_Client"))
    (:file "_package_Client" :depends-on ("_package"))
  ))