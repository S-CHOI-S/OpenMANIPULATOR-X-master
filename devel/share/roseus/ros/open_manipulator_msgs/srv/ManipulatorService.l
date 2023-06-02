;; Auto-generated. Do not edit!


(when (boundp 'open_manipulator_msgs::ManipulatorService)
  (if (not (find-package "OPEN_MANIPULATOR_MSGS"))
    (make-package "OPEN_MANIPULATOR_MSGS"))
  (shadow 'ManipulatorService (find-package "OPEN_MANIPULATOR_MSGS")))
(unless (find-package "OPEN_MANIPULATOR_MSGS::MANIPULATORSERVICE")
  (make-package "OPEN_MANIPULATOR_MSGS::MANIPULATORSERVICE"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::MANIPULATORSERVICEREQUEST")
  (make-package "OPEN_MANIPULATOR_MSGS::MANIPULATORSERVICEREQUEST"))
(unless (find-package "OPEN_MANIPULATOR_MSGS::MANIPULATORSERVICERESPONSE")
  (make-package "OPEN_MANIPULATOR_MSGS::MANIPULATORSERVICERESPONSE"))

(in-package "ROS")





(defclass open_manipulator_msgs::ManipulatorServiceRequest
  :super ros::object
  :slots (_Manipul ))

(defmethod open_manipulator_msgs::ManipulatorServiceRequest
  (:init
   (&key
    ((:Manipul __Manipul) nil)
    )
   (send-super :init)
   (setq _Manipul __Manipul)
   self)
  (:Manipul
   (&optional __Manipul)
   (if __Manipul (setq _Manipul __Manipul)) _Manipul)
  (:serialization-length
   ()
   (+
    ;; bool _Manipul
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Manipul
       (if _Manipul (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Manipul
     (setq _Manipul (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass open_manipulator_msgs::ManipulatorServiceResponse
  :super ros::object
  :slots ())

(defmethod open_manipulator_msgs::ManipulatorServiceResponse
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

(defclass open_manipulator_msgs::ManipulatorService
  :super ros::object
  :slots ())

(setf (get open_manipulator_msgs::ManipulatorService :md5sum-) "e97a16db574d49cc1895dbcce93fb70e")
(setf (get open_manipulator_msgs::ManipulatorService :datatype-) "open_manipulator_msgs/ManipulatorService")
(setf (get open_manipulator_msgs::ManipulatorService :request) open_manipulator_msgs::ManipulatorServiceRequest)
(setf (get open_manipulator_msgs::ManipulatorService :response) open_manipulator_msgs::ManipulatorServiceResponse)

(defmethod open_manipulator_msgs::ManipulatorServiceRequest
  (:response () (instance open_manipulator_msgs::ManipulatorServiceResponse :init)))

(setf (get open_manipulator_msgs::ManipulatorServiceRequest :md5sum-) "e97a16db574d49cc1895dbcce93fb70e")
(setf (get open_manipulator_msgs::ManipulatorServiceRequest :datatype-) "open_manipulator_msgs/ManipulatorServiceRequest")
(setf (get open_manipulator_msgs::ManipulatorServiceRequest :definition-)
      "bool Manipul
---


")

(setf (get open_manipulator_msgs::ManipulatorServiceResponse :md5sum-) "e97a16db574d49cc1895dbcce93fb70e")
(setf (get open_manipulator_msgs::ManipulatorServiceResponse :datatype-) "open_manipulator_msgs/ManipulatorServiceResponse")
(setf (get open_manipulator_msgs::ManipulatorServiceResponse :definition-)
      "bool Manipul
---


")



(provide :open_manipulator_msgs/ManipulatorService "e97a16db574d49cc1895dbcce93fb70e")


