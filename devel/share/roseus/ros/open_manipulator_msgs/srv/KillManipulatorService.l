;; Auto-generated. Do not edit!


(when (boundp 'open_manipulator_msgs::KillManipulatorService)
  (if (not (find-package "OPEN_MANIPULATOR_MSGS"))
    (make-package "OPEN_MANIPULATOR_MSGS"))
  (shadow 'KillManipulatorService (find-package "OPEN_MANIPULATOR_MSGS")))
(unless (find-package "OPEN_MANIPULATOR_MSGS::KILLMANIPULATORSERVICE")
  (make-package "OPEN_MANIPULATOR_MSGS::KILLMANIPULATORSERVICE"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::KILLMANIPULATORSERVICEREQUEST")
  (make-package "OPEN_MANIPULATOR_MSGS::KILLMANIPULATORSERVICEREQUEST"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::KILLMANIPULATORSERVICERESPONSE")
  (make-package "OPEN_MANIPULATOR_MSGS::KILLMANIPULATORSERVICERESPONSE"))

(in-package "ROS")





(defclass open_manipulator_msgs::KillManipulatorServiceRequest
  :super ros::object
  :slots (_KillManipul ))

(defmethod open_manipulator_msgs::KillManipulatorServiceRequest
  (:init
   (&key
    ((:KillManipul __KillManipul) nil)
    )
   (send-super :init)
   (setq _KillManipul __KillManipul)
   self)
  (:KillManipul
   (&optional __KillManipul)
   (if __KillManipul (setq _KillManipul __KillManipul)) _KillManipul)
  (:serialization-length
   ()
   (+
    ;; bool _KillManipul
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _KillManipul
       (if _KillManipul (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _KillManipul
     (setq _KillManipul (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass open_manipulator_msgs::KillManipulatorServiceResponse
  :super ros::object
  :slots ())

(defmethod open_manipulator_msgs::KillManipulatorServiceResponse
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

(defclass open_manipulator_msgs::KillManipulatorService
  :super ros::object
  :slots ())

(setf (get open_manipulator_msgs::KillManipulatorService :md5sum-) "9a01135ee4671c8756692e8e401a879e")
(setf (get open_manipulator_msgs::KillManipulatorService :datatype-) "open_manipulator_msgs/KillManipulatorService")
(setf (get open_manipulator_msgs::KillManipulatorService :request) open_manipulator_msgs::KillManipulatorServiceRequest)
(setf (get open_manipulator_msgs::KillManipulatorService :response) open_manipulator_msgs::KillManipulatorServiceResponse)

(defmethod open_manipulator_msgs::KillManipulatorServiceRequest
  (:response () (instance open_manipulator_msgs::KillManipulatorServiceResponse :init)))

(setf (get open_manipulator_msgs::KillManipulatorServiceRequest :md5sum-) "9a01135ee4671c8756692e8e401a879e")
(setf (get open_manipulator_msgs::KillManipulatorServiceRequest :datatype-) "open_manipulator_msgs/KillManipulatorServiceRequest")
(setf (get open_manipulator_msgs::KillManipulatorServiceRequest :definition-)
      "bool KillManipul
---

")

(setf (get open_manipulator_msgs::KillManipulatorServiceResponse :md5sum-) "9a01135ee4671c8756692e8e401a879e")
(setf (get open_manipulator_msgs::KillManipulatorServiceResponse :datatype-) "open_manipulator_msgs/KillManipulatorServiceResponse")
(setf (get open_manipulator_msgs::KillManipulatorServiceResponse :definition-)
      "bool KillManipul
---

")



(provide :open_manipulator_msgs/KillManipulatorService "9a01135ee4671c8756692e8e401a879e")


