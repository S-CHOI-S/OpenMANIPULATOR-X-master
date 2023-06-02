;; Auto-generated. Do not edit!


(when (boundp 'rqt_mypkg::ArmService)
  (if (not (find-package "RQT_MYPKG"))
    (make-package "RQT_MYPKG"))
  (shadow 'ArmService (find-package "RQT_MYPKG")))
(unless (find-package "RQT_MYPKG::ARMSERVICE")
  (make-package "RQT_MYPKG::ARMSERVICE"))
(unless (find-package "RQT_MYPKG::ARMSERVICEREQUEST")
  (make-package "RQT_MYPKG::ARMSERVICEREQUEST"))
(unless (find-package "RQT_MYPKG::ARMSERVICERESPONSE")
  (make-package "RQT_MYPKG::ARMSERVICERESPONSE"))

(in-package "ROS")





(defclass rqt_mypkg::ArmServiceRequest
  :super ros::object
  :slots (_Arm_isChecked ))

(defmethod rqt_mypkg::ArmServiceRequest
  (:init
   (&key
    ((:Arm_isChecked __Arm_isChecked) nil)
    )
   (send-super :init)
   (setq _Arm_isChecked __Arm_isChecked)
   self)
  (:Arm_isChecked
   (&optional __Arm_isChecked)
   (if __Arm_isChecked (setq _Arm_isChecked __Arm_isChecked)) _Arm_isChecked)
  (:serialization-length
   ()
   (+
    ;; bool _Arm_isChecked
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Arm_isChecked
       (if _Arm_isChecked (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Arm_isChecked
     (setq _Arm_isChecked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rqt_mypkg::ArmServiceResponse
  :super ros::object
  :slots ())

(defmethod rqt_mypkg::ArmServiceResponse
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

(defclass rqt_mypkg::ArmService
  :super ros::object
  :slots ())

(setf (get rqt_mypkg::ArmService :md5sum-) "eab1f22ad728081e7b689c37e7f5d0fe")
(setf (get rqt_mypkg::ArmService :datatype-) "rqt_mypkg/ArmService")
(setf (get rqt_mypkg::ArmService :request) rqt_mypkg::ArmServiceRequest)
(setf (get rqt_mypkg::ArmService :response) rqt_mypkg::ArmServiceResponse)

(defmethod rqt_mypkg::ArmServiceRequest
  (:response () (instance rqt_mypkg::ArmServiceResponse :init)))

(setf (get rqt_mypkg::ArmServiceRequest :md5sum-) "eab1f22ad728081e7b689c37e7f5d0fe")
(setf (get rqt_mypkg::ArmServiceRequest :datatype-) "rqt_mypkg/ArmServiceRequest")
(setf (get rqt_mypkg::ArmServiceRequest :definition-)
      "bool Arm_isChecked
---

")

(setf (get rqt_mypkg::ArmServiceResponse :md5sum-) "eab1f22ad728081e7b689c37e7f5d0fe")
(setf (get rqt_mypkg::ArmServiceResponse :datatype-) "rqt_mypkg/ArmServiceResponse")
(setf (get rqt_mypkg::ArmServiceResponse :definition-)
      "bool Arm_isChecked
---

")



(provide :rqt_mypkg/ArmService "eab1f22ad728081e7b689c37e7f5d0fe")


