;; Auto-generated. Do not edit!


(when (boundp 'rqt_mypkg::ManipulatorService)
  (if (not (find-package "RQT_MYPKG"))
    (make-package "RQT_MYPKG"))
  (shadow 'ManipulatorService (find-package "RQT_MYPKG")))
(unless (find-package "RQT_MYPKG::MANIPULATORSERVICE")
  (make-package "RQT_MYPKG::MANIPULATORSERVICE"))
(unless (find-package "RQT_MYPKG::MANIPULATORSERVICEREQUEST")
  (make-package "RQT_MYPKG::MANIPULATORSERVICEREQUEST"))
(unless (find-package "RQT_MYPKG::MANIPULATORSERVICERESPONSE")
  (make-package "RQT_MYPKG::MANIPULATORSERVICERESPONSE"))

(in-package "ROS")





(defclass rqt_mypkg::ManipulatorServiceRequest
  :super ros::object
  :slots (_Manipul ))

(defmethod rqt_mypkg::ManipulatorServiceRequest
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

(defclass rqt_mypkg::ManipulatorServiceResponse
  :super ros::object
  :slots ())

(defmethod rqt_mypkg::ManipulatorServiceResponse
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

(defclass rqt_mypkg::ManipulatorService
  :super ros::object
  :slots ())

(setf (get rqt_mypkg::ManipulatorService :md5sum-) "e97a16db574d49cc1895dbcce93fb70e")
(setf (get rqt_mypkg::ManipulatorService :datatype-) "rqt_mypkg/ManipulatorService")
(setf (get rqt_mypkg::ManipulatorService :request) rqt_mypkg::ManipulatorServiceRequest)
(setf (get rqt_mypkg::ManipulatorService :response) rqt_mypkg::ManipulatorServiceResponse)

(defmethod rqt_mypkg::ManipulatorServiceRequest
  (:response () (instance rqt_mypkg::ManipulatorServiceResponse :init)))

(setf (get rqt_mypkg::ManipulatorServiceRequest :md5sum-) "e97a16db574d49cc1895dbcce93fb70e")
(setf (get rqt_mypkg::ManipulatorServiceRequest :datatype-) "rqt_mypkg/ManipulatorServiceRequest")
(setf (get rqt_mypkg::ManipulatorServiceRequest :definition-)
      "bool Manipul
---

")

(setf (get rqt_mypkg::ManipulatorServiceResponse :md5sum-) "e97a16db574d49cc1895dbcce93fb70e")
(setf (get rqt_mypkg::ManipulatorServiceResponse :datatype-) "rqt_mypkg/ManipulatorServiceResponse")
(setf (get rqt_mypkg::ManipulatorServiceResponse :definition-)
      "bool Manipul
---

")



(provide :rqt_mypkg/ManipulatorService "e97a16db574d49cc1895dbcce93fb70e")


