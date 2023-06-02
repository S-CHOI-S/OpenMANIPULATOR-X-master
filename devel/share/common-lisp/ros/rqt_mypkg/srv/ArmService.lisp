; Auto-generated. Do not edit!


(cl:in-package rqt_mypkg-srv)


;//! \htmlinclude ArmService-request.msg.html

(cl:defclass <ArmService-request> (roslisp-msg-protocol:ros-message)
  ((Arm_isChecked
    :reader Arm_isChecked
    :initarg :Arm_isChecked
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ArmService-request (<ArmService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rqt_mypkg-srv:<ArmService-request> is deprecated: use rqt_mypkg-srv:ArmService-request instead.")))

(cl:ensure-generic-function 'Arm_isChecked-val :lambda-list '(m))
(cl:defmethod Arm_isChecked-val ((m <ArmService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rqt_mypkg-srv:Arm_isChecked-val is deprecated.  Use rqt_mypkg-srv:Arm_isChecked instead.")
  (Arm_isChecked m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmService-request>) ostream)
  "Serializes a message object of type '<ArmService-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Arm_isChecked) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmService-request>) istream)
  "Deserializes a message object of type '<ArmService-request>"
    (cl:setf (cl:slot-value msg 'Arm_isChecked) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmService-request>)))
  "Returns string type for a service object of type '<ArmService-request>"
  "rqt_mypkg/ArmServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmService-request)))
  "Returns string type for a service object of type 'ArmService-request"
  "rqt_mypkg/ArmServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmService-request>)))
  "Returns md5sum for a message object of type '<ArmService-request>"
  "eab1f22ad728081e7b689c37e7f5d0fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmService-request)))
  "Returns md5sum for a message object of type 'ArmService-request"
  "eab1f22ad728081e7b689c37e7f5d0fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmService-request>)))
  "Returns full string definition for message of type '<ArmService-request>"
  (cl:format cl:nil "bool Arm_isChecked~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmService-request)))
  "Returns full string definition for message of type 'ArmService-request"
  (cl:format cl:nil "bool Arm_isChecked~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmService-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmService-request
    (cl:cons ':Arm_isChecked (Arm_isChecked msg))
))
;//! \htmlinclude ArmService-response.msg.html

(cl:defclass <ArmService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ArmService-response (<ArmService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rqt_mypkg-srv:<ArmService-response> is deprecated: use rqt_mypkg-srv:ArmService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmService-response>) ostream)
  "Serializes a message object of type '<ArmService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmService-response>) istream)
  "Deserializes a message object of type '<ArmService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmService-response>)))
  "Returns string type for a service object of type '<ArmService-response>"
  "rqt_mypkg/ArmServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmService-response)))
  "Returns string type for a service object of type 'ArmService-response"
  "rqt_mypkg/ArmServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmService-response>)))
  "Returns md5sum for a message object of type '<ArmService-response>"
  "eab1f22ad728081e7b689c37e7f5d0fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmService-response)))
  "Returns md5sum for a message object of type 'ArmService-response"
  "eab1f22ad728081e7b689c37e7f5d0fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmService-response>)))
  "Returns full string definition for message of type '<ArmService-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmService-response)))
  "Returns full string definition for message of type 'ArmService-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ArmService)))
  'ArmService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ArmService)))
  'ArmService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmService)))
  "Returns string type for a service object of type '<ArmService>"
  "rqt_mypkg/ArmService")