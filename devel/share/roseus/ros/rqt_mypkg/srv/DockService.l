;; Auto-generated. Do not edit!


(when (boundp 'rqt_mypkg::DockService)
  (if (not (find-package "RQT_MYPKG"))
    (make-package "RQT_MYPKG"))
  (shadow 'DockService (find-package "RQT_MYPKG")))
(unless (find-package "RQT_MYPKG::DOCKSERVICE")
  (make-package "RQT_MYPKG::DOCKSERVICE"))
(unless (find-package "RQT_MYPKG::DOCKSERVICEREQUEST")
  (make-package "RQT_MYPKG::DOCKSERVICEREQUEST"))
(unless (find-package "RQT_MYPKG::DOCKSERVICERESPONSE")
  (make-package "RQT_MYPKG::DOCKSERVICERESPONSE"))

(in-package "ROS")





(defclass rqt_mypkg::DockServiceRequest
  :super ros::object
  :slots (_Dock_Do ))

(defmethod rqt_mypkg::DockServiceRequest
  (:init
   (&key
    ((:Dock_Do __Dock_Do) nil)
    )
   (send-super :init)
   (setq _Dock_Do __Dock_Do)
   self)
  (:Dock_Do
   (&optional __Dock_Do)
   (if __Dock_Do (setq _Dock_Do __Dock_Do)) _Dock_Do)
  (:serialization-length
   ()
   (+
    ;; bool _Dock_Do
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Dock_Do
       (if _Dock_Do (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Dock_Do
     (setq _Dock_Do (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rqt_mypkg::DockServiceResponse
  :super ros::object
  :slots ())

(defmethod rqt_mypkg::DockServiceResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rqt_mypkg::DockService
  :super ros::object
  :slots ())

(setf (get rqt_mypkg::DockService :md5sum-) "176118c4f805289b178b248bb86fc0ac")
(setf (get rqt_mypkg::DockService :datatype-) "rqt_mypkg/DockService")
(setf (get rqt_mypkg::DockService :request) rqt_mypkg::DockServiceRequest)
(setf (get rqt_mypkg::DockService :response) rqt_mypkg::DockServiceResponse)

(defmethod rqt_mypkg::DockServiceRequest
  (:response () (instance rqt_mypkg::DockServiceResponse :init)))

(setf (get rqt_mypkg::DockServiceRequest :md5sum-) "176118c4f805289b178b248bb86fc0ac")
(setf (get rqt_mypkg::DockServiceRequest :datatype-) "rqt_mypkg/DockServiceRequest")
(setf (get rqt_mypkg::DockServiceRequest :definition-)
      "bool Dock_Do
---

")

(setf (get rqt_mypkg::DockServiceResponse :md5sum-) "176118c4f805289b178b248bb86fc0ac")
(setf (get rqt_mypkg::DockServiceResponse :datatype-) "rqt_mypkg/DockServiceResponse")
(setf (get rqt_mypkg::DockServiceResponse :definition-)
      "bool Dock_Do
---

")



(provide :rqt_mypkg/DockService "176118c4f805289b178b248bb86fc0ac")


