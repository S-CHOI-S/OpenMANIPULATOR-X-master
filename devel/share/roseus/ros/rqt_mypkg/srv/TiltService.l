;; Auto-generated. Do not edit!


(when (boundp 'rqt_mypkg::TiltService)
  (if (not (find-package "RQT_MYPKG"))
    (make-package "RQT_MYPKG"))
  (shadow 'TiltService (find-package "RQT_MYPKG")))
(unless (find-package "RQT_MYPKG::TILTSERVICE")
  (make-package "RQT_MYPKG::TILTSERVICE"))
(unless (find-package "RQT_MYPKG::TILTSERVICEREQUEST")
  (make-package "RQT_MYPKG::TILTSERVICEREQUEST"))
(unless (find-package "RQT_MYPKG::TILTSERVICERESPONSE")
  (make-package "RQT_MYPKG::TILTSERVICERESPONSE"))

(in-package "ROS")





(defclass rqt_mypkg::TiltServiceRequest
  :super ros::object
  :slots (_Tilt_isChecked ))

(defmethod rqt_mypkg::TiltServiceRequest
  (:init
   (&key
    ((:Tilt_isChecked __Tilt_isChecked) nil)
    )
   (send-super :init)
   (setq _Tilt_isChecked __Tilt_isChecked)
   self)
  (:Tilt_isChecked
   (&optional __Tilt_isChecked)
   (if __Tilt_isChecked (setq _Tilt_isChecked __Tilt_isChecked)) _Tilt_isChecked)
  (:serialization-length
   ()
   (+
    ;; bool _Tilt_isChecked
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Tilt_isChecked
       (if _Tilt_isChecked (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Tilt_isChecked
     (setq _Tilt_isChecked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rqt_mypkg::TiltServiceResponse
  :super ros::object
  :slots ())

(defmethod rqt_mypkg::TiltServiceResponse
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

(defclass rqt_mypkg::TiltService
  :super ros::object
  :slots ())

(setf (get rqt_mypkg::TiltService :md5sum-) "255a80a4a8236b9a7fbfacc2e90e9a25")
(setf (get rqt_mypkg::TiltService :datatype-) "rqt_mypkg/TiltService")
(setf (get rqt_mypkg::TiltService :request) rqt_mypkg::TiltServiceRequest)
(setf (get rqt_mypkg::TiltService :response) rqt_mypkg::TiltServiceResponse)

(defmethod rqt_mypkg::TiltServiceRequest
  (:response () (instance rqt_mypkg::TiltServiceResponse :init)))

(setf (get rqt_mypkg::TiltServiceRequest :md5sum-) "255a80a4a8236b9a7fbfacc2e90e9a25")
(setf (get rqt_mypkg::TiltServiceRequest :datatype-) "rqt_mypkg/TiltServiceRequest")
(setf (get rqt_mypkg::TiltServiceRequest :definition-)
      "bool Tilt_isChecked
---

")

(setf (get rqt_mypkg::TiltServiceResponse :md5sum-) "255a80a4a8236b9a7fbfacc2e90e9a25")
(setf (get rqt_mypkg::TiltServiceResponse :datatype-) "rqt_mypkg/TiltServiceResponse")
(setf (get rqt_mypkg::TiltServiceResponse :definition-)
      "bool Tilt_isChecked
---

")



(provide :rqt_mypkg/TiltService "255a80a4a8236b9a7fbfacc2e90e9a25")


