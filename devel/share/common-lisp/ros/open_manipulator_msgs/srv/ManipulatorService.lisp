; Auto-generated. Do not edit!


(cl:in-package open_manipulator_msgs-srv)


;//! \htmlinclude ManipulatorService-request.msg.html

(cl:defclass <ManipulatorService-request> (roslisp-msg-protocol:ros-message)
  ((Manipul
    :reader Manipul
    :initarg :Manipul
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ManipulatorService-request (<ManipulatorService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManipulatorService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManipulatorService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<ManipulatorService-request> is deprecated: use open_manipulator_msgs-srv:ManipulatorService-request instead.")))

(cl:ensure-generic-function 'Manipul-val :lambda-list '(m))
(cl:defmethod Manipul-val ((m <ManipulatorService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader open_manipulator_msgs-srv:Manipul-val is deprecated.  Use open_manipulator_msgs-srv:Manipul instead.")
  (Manipul m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManipulatorService-request>) ostream)
  "Serializes a message object of type '<ManipulatorService-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Manipul) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManipulatorService-request>) istream)
  "Deserializes a message object of type '<ManipulatorService-request>"
    (cl:setf (cl:slot-value msg 'Manipul) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManipulatorService-request>)))
  "Returns string type for a service object of type '<ManipulatorService-request>"
  "open_manipulator_msgs/ManipulatorServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManipulatorService-request)))
  "Returns string type for a service object of type 'ManipulatorService-request"
  "open_manipulator_msgs/ManipulatorServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManipulatorService-request>)))
  "Returns md5sum for a message object of type '<ManipulatorService-request>"
  "e97a16db574d49cc1895dbcce93fb70e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManipulatorService-request)))
  "Returns md5sum for a message object of type 'ManipulatorService-request"
  "e97a16db574d49cc1895dbcce93fb70e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManipulatorService-request>)))
  "Returns full string definition for message of type '<ManipulatorService-request>"
  (cl:format cl:nil "bool Manipul~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManipulatorService-request)))
  "Returns full string definition for message of type 'ManipulatorService-request"
  (cl:format cl:nil "bool Manipul~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManipulatorService-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManipulatorService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ManipulatorService-request
    (cl:cons ':Manipul (Manipul msg))
))
;//! \htmlinclude ManipulatorService-response.msg.html

(cl:defclass <ManipulatorService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ManipulatorService-response (<ManipulatorService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManipulatorService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManipulatorService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name open_manipulator_msgs-srv:<ManipulatorService-response> is deprecated: use open_manipulator_msgs-srv:ManipulatorService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManipulatorService-response>) ostream)
  "Serializes a message object of type '<ManipulatorService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManipulatorService-response>) istream)
  "Deserializes a message object of type '<ManipulatorService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManipulatorService-response>)))
  "Returns string type for a service object of type '<ManipulatorService-response>"
  "open_manipulator_msgs/ManipulatorServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManipulatorService-response)))
  "Returns string type for a service object of type 'ManipulatorService-response"
  "open_manipulator_msgs/ManipulatorServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManipulatorService-response>)))
  "Returns md5sum for a message object of type '<ManipulatorService-response>"
  "e97a16db574d49cc1895dbcce93fb70e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManipulatorService-response)))
  "Returns md5sum for a message object of type 'ManipulatorService-response"
  "e97a16db574d49cc1895dbcce93fb70e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManipulatorService-response>)))
  "Returns full string definition for message of type '<ManipulatorService-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManipulatorService-response)))
  "Returns full string definition for message of type 'ManipulatorService-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManipulatorService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManipulatorService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ManipulatorService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ManipulatorService)))
  'ManipulatorService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ManipulatorService)))
  'ManipulatorService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManipulatorService)))
  "Returns string type for a service object of type '<ManipulatorService>"
  "open_manipulator_msgs/ManipulatorService")