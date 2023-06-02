; Auto-generated. Do not edit!


(cl:in-package open_manipulator_msgs-srv)


;//! \htmlinclude DockBatteryService-request.msg.html

(cl:defclass <DockBatteryService-request> (roslisp-msg-protocol:ros-message)
  ((Dock_Do
    :reader Dock_Do
    :initarg :Dock_Do
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DockBatteryService-request (<DockBatteryService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockBatteryService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockBatteryService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<DockBatteryService-request> is deprecated: use open_manipulator_msgs-srv:DockBatteryService-request instead.")))

(cl:ensure-generic-function 'Dock_Do-val :lambda-list '(m))
(cl:defmethod Dock_Do-val ((m <DockBatteryService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:Dock_Do-val is deprecated.  Use open_manipulator_msgs-srv:Dock_Do instead.")
  (Dock_Do m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockBatteryService-request>) ostream)
  "Serializes a message object of type '<DockBatteryService-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Dock_Do) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockBatteryService-request>) istream)
  "Deserializes a message object of type '<DockBatteryService-request>"
    (cl:setf (cl:slot-value msg 'Dock_Do) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockBatteryService-request>)))
  "Returns string type for a service object of type '<DockBatteryService-request>"
  "open_manipulator_msgs/DockBatteryServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockBatteryService-request)))
  "Returns string type for a service object of type 'DockBatteryService-request"
  "open_manipulator_msgs/DockBatteryServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockBatteryService-request>)))
  "Returns md5sum for a message object of type '<DockBatteryService-request>"
  "176118c4f805289b178b248bb86fc0ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockBatteryService-request)))
  "Returns md5sum for a message object of type 'DockBatteryService-request"
  "176118c4f805289b178b248bb86fc0ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockBatteryService-request>)))
  "Returns full string definition for message of type '<DockBatteryService-request>"
  (cl:format cl:nil "bool Dock_Do~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockBatteryService-request)))
  "Returns full string definition for message of type 'DockBatteryService-request"
  (cl:format cl:nil "bool Dock_Do~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockBatteryService-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockBatteryService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DockBatteryService-request
    (cl:cons ':Dock_Do (Dock_Do msg))
))
;//! \htmlinclude DockBatteryService-response.msg.html

(cl:defclass <DockBatteryService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DockBatteryService-response (<DockBatteryService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockBatteryService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockBatteryService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<DockBatteryService-response> is deprecated: use open_manipulator_msgs-srv:DockBatteryService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockBatteryService-response>) ostream)
  "Serializes a message object of type '<DockBatteryService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockBatteryService-response>) istream)
  "Deserializes a message object of type '<DockBatteryService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockBatteryService-response>)))
  "Returns string type for a service object of type '<DockBatteryService-response>"
  "open_manipulator_msgs/DockBatteryServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockBatteryService-response)))
  "Returns string type for a service object of type 'DockBatteryService-response"
  "open_manipulator_msgs/DockBatteryServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockBatteryService-response>)))
  "Returns md5sum for a message object of type '<DockBatteryService-response>"
  "176118c4f805289b178b248bb86fc0ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockBatteryService-response)))
  "Returns md5sum for a message object of type 'DockBatteryService-response"
  "176118c4f805289b178b248bb86fc0ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockBatteryService-response>)))
  "Returns full string definition for message of type '<DockBatteryService-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockBatteryService-response)))
  "Returns full string definition for message of type 'DockBatteryService-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockBatteryService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockBatteryService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DockBatteryService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DockBatteryService)))
  'DockBatteryService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DockBatteryService)))
  'DockBatteryService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockBatteryService)))
  "Returns string type for a service object of type '<DockBatteryService>"
  "open_manipulator_msgs/DockBatteryService")