; Auto-generated. Do not edit!


(cl:in-package open_manipulator_msgs-srv)


;//! \htmlinclude KillManipulatorService-request.msg.html

(cl:defclass <KillManipulatorService-request> (roslisp-msg-protocol:ros-message)
  ((KillManipul
    :reader KillManipul
    :initarg :KillManipul
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass KillManipulatorService-request (<KillManipulatorService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KillManipulatorService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KillManipulatorService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<KillManipulatorService-request> is deprecated: use open_manipulator_msgs-srv:KillManipulatorService-request instead.")))

(cl:ensure-generic-function 'KillManipul-val :lambda-list '(m))
(cl:defmethod KillManipul-val ((m <KillManipulatorService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:KillManipul-val is deprecated.  Use open_manipulator_msgs-srv:KillManipul instead.")
  (KillManipul m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KillManipulatorService-request>) ostream)
  "Serializes a message object of type '<KillManipulatorService-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'KillManipul) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KillManipulatorService-request>) istream)
  "Deserializes a message object of type '<KillManipulatorService-request>"
    (cl:setf (cl:slot-value msg 'KillManipul) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KillManipulatorService-request>)))
  "Returns string type for a service object of type '<KillManipulatorService-request>"
  "open_manipulator_msgs/KillManipulatorServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KillManipulatorService-request)))
  "Returns string type for a service object of type 'KillManipulatorService-request"
  "open_manipulator_msgs/KillManipulatorServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KillManipulatorService-request>)))
  "Returns md5sum for a message object of type '<KillManipulatorService-request>"
  "9a01135ee4671c8756692e8e401a879e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KillManipulatorService-request)))
  "Returns md5sum for a message object of type 'KillManipulatorService-request"
  "9a01135ee4671c8756692e8e401a879e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KillManipulatorService-request>)))
  "Returns full string definition for message of type '<KillManipulatorService-request>"
  (cl:format cl:nil "bool KillManipul~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KillManipulatorService-request)))
  "Returns full string definition for message of type 'KillManipulatorService-request"
  (cl:format cl:nil "bool KillManipul~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KillManipulatorService-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KillManipulatorService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'KillManipulatorService-request
    (cl:cons ':KillManipul (KillManipul msg))
))
;//! \htmlinclude KillManipulatorService-response.msg.html

(cl:defclass <KillManipulatorService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass KillManipulatorService-response (<KillManipulatorService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KillManipulatorService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KillManipulatorService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<KillManipulatorService-response> is deprecated: use open_manipulator_msgs-srv:KillManipulatorService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KillManipulatorService-response>) ostream)
  "Serializes a message object of type '<KillManipulatorService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KillManipulatorService-response>) istream)
  "Deserializes a message object of type '<KillManipulatorService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KillManipulatorService-response>)))
  "Returns string type for a service object of type '<KillManipulatorService-response>"
  "open_manipulator_msgs/KillManipulatorServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KillManipulatorService-response)))
  "Returns string type for a service object of type 'KillManipulatorService-response"
  "open_manipulator_msgs/KillManipulatorServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KillManipulatorService-response>)))
  "Returns md5sum for a message object of type '<KillManipulatorService-response>"
  "9a01135ee4671c8756692e8e401a879e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KillManipulatorService-response)))
  "Returns md5sum for a message object of type 'KillManipulatorService-response"
  "9a01135ee4671c8756692e8e401a879e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KillManipulatorService-response>)))
  "Returns full string definition for message of type '<KillManipulatorService-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KillManipulatorService-response)))
  "Returns full string definition for message of type 'KillManipulatorService-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KillManipulatorService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KillManipulatorService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'KillManipulatorService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'KillManipulatorService)))
  'KillManipulatorService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'KillManipulatorService)))
  'KillManipulatorService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KillManipulatorService)))
  "Returns string type for a service object of type '<KillManipulatorService>"
  "open_manipulator_msgs/KillManipulatorService")