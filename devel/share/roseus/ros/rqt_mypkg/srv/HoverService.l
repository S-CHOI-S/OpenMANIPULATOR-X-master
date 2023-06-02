;; Auto-generated. Do not edit!


(when (boundp 'rqt_mypkg::HoverService)
  (if (not (find-package "RQT_MYPKG"))
    (make-package "RQT_MYPKG"))
  (shadow 'HoverService (find-package "RQT_MYPKG")))
(unless (find-package "RQT_MYPKG::HOVERSERVICE")
  (make-package "RQT_MYPKG::HOVERSERVICE"))
(unless (find-package "RQT_MYPKG::HOVERSERVICEREQUEST")
  (make-package "RQT_MYPKG::HOVERSERVICEREQUEST"))
(unless (find-package "RQT_MYPKG::HOVERSERVICERESPONSE")
  (make-package "RQT_MYPKG::HOVERSERVICERESPONSE"))

(in-package "ROS")





(defclass rqt_mypkg::HoverServiceRequest
  :super ros::object
  :slots (_isHover _isHovering _isLanding ))

(defmethod rqt_mypkg::HoverServiceRequest
  (:init
   (&key
    ((:isHover __isHover) nil)
    ((:isHovering __isHovering) nil)
    ((:isLanding __isLanding) nil)
    )
   (send-super :init)
   (setq _isHover __isHover)
   (setq _isHovering __isHovering)
   (setq _isLanding __isLanding)
   self)
  (:isHover
   (&optional __isHover)
   (if __isHover (setq _isHover __isHover)) _isHover)
  (:isHovering
   (&optional __isHovering)
   (if __isHovering (setq _isHovering __isHovering)) _isHovering)
  (:isLanding
   (&optional __isLanding)
   (if __isLanding (setq _isLanding __isLanding)) _isLanding)
  (:serialization-length
   ()
   (+
    ;; bool _isHover
    1
    ;; bool _isHovering
    1
    ;; bool _isLanding
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isHover
       (if _isHover (write-byte -1 s) (write-byte 0 s))
     ;; bool _isHovering
       (if _isHovering (write-byte -1 s) (write-byte 0 s))
     ;; bool _isLanding
       (if _isLanding (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isHover
     (setq _isHover (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isHovering
     (setq _isHovering (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isLanding
     (setq _isLanding (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rqt_mypkg::HoverServiceResponse
  :super ros::object
  :slots ())

(defmethod rqt_mypkg::HoverServiceResponse
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

(defclass rqt_mypkg::HoverService
  :super ros::object
  :slots ())

(setf (get rqt_mypkg::HoverService :md5sum-) "8930d5ae44ec72110e415a4dfe50939b")
(setf (get rqt_mypkg::HoverService :datatype-) "rqt_mypkg/HoverService")
(setf (get rqt_mypkg::HoverService :request) rqt_mypkg::HoverServiceRequest)
(setf (get rqt_mypkg::HoverService :response) rqt_mypkg::HoverServiceResponse)

(defmethod rqt_mypkg::HoverServiceRequest
  (:response () (instance rqt_mypkg::HoverServiceResponse :init)))

(setf (get rqt_mypkg::HoverServiceRequest :md5sum-) "8930d5ae44ec72110e415a4dfe50939b")
(setf (get rqt_mypkg::HoverServiceRequest :datatype-) "rqt_mypkg/HoverServiceRequest")
(setf (get rqt_mypkg::HoverServiceRequest :definition-)
      "bool isHover
bool isHovering
bool isLanding
---

")

(setf (get rqt_mypkg::HoverServiceResponse :md5sum-) "8930d5ae44ec72110e415a4dfe50939b")
(setf (get rqt_mypkg::HoverServiceResponse :datatype-) "rqt_mypkg/HoverServiceResponse")
(setf (get rqt_mypkg::HoverServiceResponse :definition-)
      "bool isHover
bool isHovering
bool isLanding
---

")



(provide :rqt_mypkg/HoverService "8930d5ae44ec72110e415a4dfe50939b")


