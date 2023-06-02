; Auto-generated. Do not edit!


(cl:in-package rqt_mypkg-srv)


;//! \htmlinclude DockService-request.msg.html

(cl:defclass <DockService-request> (roslisp-msg-protocol:ros-message)
  ((Dock_Do
    :reader Dock_Do
    :initarg :Dock_Do
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DockService-request (<DockService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rqt_mypkg-srv:<DockService-request> is deprecated: use rqt_mypkg-srv:DockService-request instead.")))

(cl:ensure-generic-function 'Dock_Do-val :lambda-list '(m))
(cl:defmethod Dock_Do-val ((m <DockService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rqt_mypkg-srv:Dock_Do-val is deprecated.  Use rqt_mypkg-srv:Dock_Do instead.")
  (Dock_Do m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockService-request>) ostream)
  "Serializes a message object of type '<DockService-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Dock_Do) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockService-request>) istream)
  "Deserializes a message object of type '<DockService-request>"
    (cl:setf (cl:slot-value msg 'Dock_Do) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockService-request>)))
  "Returns string type for a service object of type '<DockService-request>"
  "rqt_mypkg/DockServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockService-request)))
  "Returns string type for a service object of type 'DockService-request"
  "rqt_mypkg/DockServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockService-request>)))
  "Returns md5sum for a message object of type '<DockService-request>"
  "176118c4f805289b178b248bb86fc0ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockService-request)))
  "Returns md5sum for a message object of type 'DockService-request"
  "176118c4f805289b178b248bb86fc0ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockService-request>)))
  "Returns full string definition for message of type '<DockService-request>"
  (cl:format cl:nil "bool Dock_Do~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockService-request)))
  "Returns full string definition for message of type 'DockService-request"
  (cl:format cl:nil "bool Dock_Do~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockService-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DockService-request
    (cl:cons ':Dock_Do (Dock_Do msg))
))
;//! \htmlinclude DockService-response.msg.html

(cl:defclass <DockService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DockService-response (<DockService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rqt_mypkg-srv:<DockService-response> is deprecated: use rqt_mypkg-srv:DockService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockService-response>) ostream)
  "Serializes a message object of type '<DockService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockService-response>) istream)
  "Deserializes a message object of type '<DockService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockService-response>)))
  "Returns string type for a service object of type '<DockService-response>"
  "rqt_mypkg/DockServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockService-response)))
  "Returns string type for a service object of type 'DockService-response"
  "rqt_mypkg/DockServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockService-response>)))
  "Returns md5sum for a message object of type '<DockService-response>"
  "176118c4f805289b178b248bb86fc0ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockService-response)))
  "Returns md5sum for a message object of type 'DockService-response"
  "176118c4f805289b178b248bb86fc0ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockService-response>)))
  "Returns full string definition for message of type '<DockService-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockService-response)))
  "Returns full string definition for message of type 'DockService-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DockService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DockService)))
  'DockService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DockService)))
  'DockService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockService)))
  "Returns string type for a service object of type '<DockService>"
  "rqt_mypkg/DockService")