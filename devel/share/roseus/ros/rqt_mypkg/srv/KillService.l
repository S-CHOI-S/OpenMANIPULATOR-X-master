;; Auto-generated. Do not edit!


(when (boundp 'rqt_mypkg::KillService)
  (if (not (find-package "RQT_MYPKG"))
    (make-package "RQT_MYPKG"))
  (shadow 'KillService (find-package "RQT_MYPKG")))
(unless (find-package "RQT_MYPKG::KILLSERVICE")
  (make-package "RQT_MYPKG::KILLSERVICE"))
(unless (find-package "RQT_MYPKG::KILLSERVICEREQUEST")
  (make-package "RQT_MYPKG::KILLSERVICEREQUEST"))
(unless (find-package "RQT_MYPKG::KILLSERVICERESPONSE")
  (make-package "RQT_MYPKG::KILLSERVICERESPONSE"))

(in-package "ROS")





(defclass rqt_mypkg::KillServiceRequest
  :super ros::object
  :slots (_Kill_isChecked ))

(defmethod rqt_mypkg::KillServiceRequest
  (:init
   (&key
    ((:Kill_isChecked __Kill_isChecked) nil)
    )
   (send-super :init)
   (setq _Kill_isChecked __Kill_isChecked)
   self)
  (:Kill_isChecked
   (&optional __Kill_isChecked)
   (if __Kill_isChecked (setq _Kill_isChecked __Kill_isChecked)) _Kill_isChecked)
  (:serialization-length
   ()
   (+
    ;; bool _Kill_isChecked
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Kill_isChecked
       (if _Kill_isChecked (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Kill_isChecked
     (setq _Kill_isChecked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rqt_mypkg::KillServiceResponse
  :super ros::object
  :slots ())

(defmethod rqt_mypkg::KillServiceResponse
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

(defclass rqt_mypkg::KillService
  :super ros::object
  :slots ())

(setf (get rqt_mypkg::KillService :md5sum-) "2f50e671bde85037531fb7afb9fea841")
(setf (get rqt_mypkg::KillService :datatype-) "rqt_mypkg/KillService")
(setf (get rqt_mypkg::KillService :request) rqt_mypkg::KillServiceRequest)
(setf (get rqt_mypkg::KillService :response) rqt_mypkg::KillServiceResponse)

(defmethod rqt_mypkg::KillServiceRequest
  (:response () (instance rqt_mypkg::KillServiceResponse :init)))

(setf (get rqt_mypkg::KillServiceRequest :md5sum-) "2f50e671bde85037531fb7afb9fea841")
(setf (get rqt_mypkg::KillServiceRequest :datatype-) "rqt_mypkg/KillServiceRequest")
(setf (get rqt_mypkg::KillServiceRequest :definition-)
      "bool Kill_isChecked
---

")

(setf (get rqt_mypkg::KillServiceResponse :md5sum-) "2f50e671bde85037531fb7afb9fea841")
(setf (get rqt_mypkg::KillServiceResponse :datatype-) "rqt_mypkg/KillServiceResponse")
(setf (get rqt_mypkg::KillServiceResponse :definition-)
      "bool Kill_isChecked
---

")



(provide :rqt_mypkg/KillService "2f50e671bde85037531fb7afb9fea841")


