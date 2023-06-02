;; Auto-generated. Do not edit!


(when (boundp 'rqt_mypkg::PosCtrlService)
  (if (not (find-package "RQT_MYPKG"))
    (make-package "RQT_MYPKG"))
  (shadow 'PosCtrlService (find-package "RQT_MYPKG")))
(unless (find-package "RQT_MYPKG::POSCTRLSERVICE")
  (make-package "RQT_MYPKG::POSCTRLSERVICE"))
(unless (find-package "RQT_MYPKG::POSCTRLSERVICEREQUEST")
  (make-package "RQT_MYPKG::POSCTRLSERVICEREQUEST"))
(unless (find-package "RQT_MYPKG::POSCTRLSERVICERESPONSE")
  (make-package "RQT_MYPKG::POSCTRLSERVICERESPONSE"))

(in-package "ROS")





(defclass rqt_mypkg::PosCtrlServiceRequest
  :super ros::object
  :slots (_desired_X _desired_Y _desired_Yaw _desired_Alti ))

(defmethod rqt_mypkg::PosCtrlServiceRequest
  (:init
   (&key
    ((:desired_X __desired_X) 0.0)
    ((:desired_Y __desired_Y) 0.0)
    ((:desired_Yaw __desired_Yaw) 0.0)
    ((:desired_Alti __desired_Alti) 0.0)
    )
   (send-super :init)
   (setq _desired_X (float __desired_X))
   (setq _desired_Y (float __desired_Y))
   (setq _desired_Yaw (float __desired_Yaw))
   (setq _desired_Alti (float __desired_Alti))
   self)
  (:desired_X
   (&optional __desired_X)
   (if __desired_X (setq _desired_X __desired_X)) _desired_X)
  (:desired_Y
   (&optional __desired_Y)
   (if __desired_Y (setq _desired_Y __desired_Y)) _desired_Y)
  (:desired_Yaw
   (&optional __desired_Yaw)
   (if __desired_Yaw (setq _desired_Yaw __desired_Yaw)) _desired_Yaw)
  (:desired_Alti
   (&optional __desired_Alti)
   (if __desired_Alti (setq _desired_Alti __desired_Alti)) _desired_Alti)
  (:serialization-length
   ()
   (+
    ;; float32 _desired_X
    4
    ;; float32 _desired_Y
    4
    ;; float32 _desired_Yaw
    4
    ;; float32 _desired_Alti
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _desired_X
       (sys::poke _desired_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _desired_Y
       (sys::poke _desired_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _desired_Yaw
       (sys::poke _desired_Yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _desired_Alti
       (sys::poke _desired_Alti (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _desired_X
     (setq _desired_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _desired_Y
     (setq _desired_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _desired_Yaw
     (setq _desired_Yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _desired_Alti
     (setq _desired_Alti (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rqt_mypkg::PosCtrlServiceResponse
  :super ros::object
  :slots ())

(defmethod rqt_mypkg::PosCtrlServiceResponse
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

(defclass rqt_mypkg::PosCtrlService
  :super ros::object
  :slots ())

(setf (get rqt_mypkg::PosCtrlService :md5sum-) "80a636fc1acfa66a2cafa05380613d88")
(setf (get rqt_mypkg::PosCtrlService :datatype-) "rqt_mypkg/PosCtrlService")
(setf (get rqt_mypkg::PosCtrlService :request) rqt_mypkg::PosCtrlServiceRequest)
(setf (get rqt_mypkg::PosCtrlService :response) rqt_mypkg::PosCtrlServiceResponse)

(defmethod rqt_mypkg::PosCtrlServiceRequest
  (:response () (instance rqt_mypkg::PosCtrlServiceResponse :init)))

(setf (get rqt_mypkg::PosCtrlServiceRequest :md5sum-) "80a636fc1acfa66a2cafa05380613d88")
(setf (get rqt_mypkg::PosCtrlServiceRequest :datatype-) "rqt_mypkg/PosCtrlServiceRequest")
(setf (get rqt_mypkg::PosCtrlServiceRequest :definition-)
      "float32 desired_X
float32 desired_Y
float32 desired_Yaw
float32 desired_Alti
---

")

(setf (get rqt_mypkg::PosCtrlServiceResponse :md5sum-) "80a636fc1acfa66a2cafa05380613d88")
(setf (get rqt_mypkg::PosCtrlServiceResponse :datatype-) "rqt_mypkg/PosCtrlServiceResponse")
(setf (get rqt_mypkg::PosCtrlServiceResponse :definition-)
      "float32 desired_X
float32 desired_Y
float32 desired_Yaw
float32 desired_Alti
---

")



(provide :rqt_mypkg/PosCtrlService "80a636fc1acfa66a2cafa05380613d88")


