
(cl:in-package :asdf)

(defsystem "rqt_mypkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :rqt_mypkg-msg
)
  :components ((:file "_package")
    (:file "ArmService" :depends-on ("_package_ArmService"))
    (:file "_package_ArmService" :depends-on ("_package"))
    (:file "DockService" :depends-on ("_package_DockService"))
    (:file "_package_DockService" :depends-on ("_package"))
    (:file "HoverService" :depends-on ("_package_HoverService"))
    (:file "_package_HoverService" :depends-on ("_package"))
    (:file "KillService" :depends-on ("_package_KillService"))
    (:file "_package_KillService" :depends-on ("_package"))
    (:file "ManipulatorService" :depends-on ("_package_ManipulatorService"))
    (:file "_package_ManipulatorService" :depends-on ("_package"))
    (:file "PosCtrlService" :depends-on ("_package_PosCtrlService"))
    (:file "_package_PosCtrlService" :depends-on ("_package"))
    (:file "SetKinematicsPose" :depends-on ("_package_SetKinematicsPose"))
    (:file "_package_SetKinematicsPose" :depends-on ("_package"))
    (:file "TiltService" :depends-on ("_package_TiltService"))
    (:file "_package_TiltService" :depends-on ("_package"))
  ))