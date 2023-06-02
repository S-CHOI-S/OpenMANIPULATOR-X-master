;; Auto-generated. Do not edit!


(when (boundp 'open_manipulator_msgs::DockBatteryService)
  (if (not (find-package "OPEN_MANIPULATOR_MSGS"))
    (make-package "OPEN_MANIPULATOR_MSGS"))
  (shadow 'DockBatteryService (find-package "OPEN_MANIPULATOR_MSGS")))
(unless (find-package "OPEN_MANIPULATOR_MSGS::DOCKBATTERYSERVICE")
  (make-package "OPEN_MANIPULATOR_MSGS::DOCKBATTERYSERVICE"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::DOCKBATTERYSERVICEREQUEST")
  (make-package "OPEN_MANIPULATOR_MSGS::DOCKBATTERYSERVICEREQUEST"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::DOCKBATTERYSERVICERESPONSE")
  (make-package "OPEN_MANIPULATOR_MSGS::DOCKBATTERYSERVICERESPONSE"))

(in-package "ROS")





(defclass open_manipulator_msgs::DockBatteryServiceRequest
  :super ros::object
  :slots (_Dock_Do ))

(defmethod open_manipulator_msgs::DockBatteryServiceRequest
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

(defclass open_manipulator_msgs::DockBatteryServiceResponse
  :super ros::object
  :slots ())

(defmethod open_manipulator_msgs::DockBatteryServiceResponse
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

(defclass open_manipulator_msgs::DockBatteryService
  :super ros::object
  :slots ())

(setf (get open_manipulator_msgs::DockBatteryService :md5sum-) "176118c4f805289b178b248bb86fc0ac")
(setf (get open_manipulator_msgs::DockBatteryService :datatype-) "open_manipulator_msgs/DockBatteryService")
(setf (get open_manipulator_msgs::DockBatteryService :request) open_manipulator_msgs::DockBatteryServiceRequest)
(setf (get open_manipulator_msgs::DockBatteryService :response) open_manipulator_msgs::DockBatteryServiceResponse)

(defmethod open_manipulator_msgs::DockBatteryServiceRequest
  (:response () (instance open_manipulator_msgs::DockBatteryServiceResponse :init)))

(setf (get open_manipulator_msgs::DockBatteryServiceRequest :md5sum-) "176118c4f805289b178b248bb86fc0ac")
(setf (get open_manipulator_msgs::DockBatteryServiceRequest :datatype-) "open_manipulator_msgs/DockBatteryServiceRequest")
(setf (get open_manipulator_msgs::DockBatteryServiceRequest :definition-)
      "bool Dock_Do
---

")

(setf (get open_manipulator_msgs::DockBatteryServiceResponse :md5sum-) "176118c4f805289b178b248bb86fc0ac")
(setf (get open_manipulator_msgs::DockBatteryServiceResponse :datatype-) "open_manipulator_msgs/DockBatteryServiceResponse")
(setf (get open_manipulator_msgs::DockBatteryServiceResponse :definition-)
      "bool Dock_Do
---

")



(provide :open_manipulator_msgs/DockBatteryService "176118c4f805289b178b248bb86fc0ac")


