; Auto-generated. Do not edit!


(cl:in-package rqt_mypkg-srv)


;//! \htmlinclude KillService-request.msg.html

(cl:defclass <KillService-request> (roslisp-msg-protocol:ros-message)
  ((Kill_isChecked
    :reader Kill_isChecked
    :initarg :Kill_isChecked
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass KillService-request (<KillService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KillService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KillService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rqt_mypkg-srv:<KillService-request> is deprecated: use rqt_mypkg-srv:KillService-request instead.")))

(cl:ensure-generic-function 'Kill_isChecked-val :lambda-list '(m))
(cl:defmethod Kill_isChecked-val ((m <KillService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rqt_mypkg-srv:Kill_isChecked-val is deprecated.  Use rqt_mypkg-srv:Kill_isChecked instead.")
  (Kill_isChecked m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KillService-request>) ostream)
  "Serializes a message object of type '<KillService-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Kill_isChecked) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KillService-request>) istream)
  "Deserializes a message object of type '<KillService-request>"
    (cl:setf (cl:slot-value msg 'Kill_isChecked) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KillService-request>)))
  "Returns string type for a service object of type '<KillService-request>"
  "rqt_mypkg/KillServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KillService-request)))
  "Returns string type for a service object of type 'KillService-request"
  "rqt_mypkg/KillServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KillService-request>)))
  "Returns md5sum for a message object of type '<KillService-request>"
  "2f50e671bde85037531fb7afb9fea841")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KillService-request)))
  "Returns md5sum for a message object of type 'KillService-request"
  "2f50e671bde85037531fb7afb9fea841")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KillService-request>)))
  "Returns full string definition for message of type '<KillService-request>"
  (cl:format cl:nil "bool Kill_isChecked~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KillService-request)))
  "Returns full string definition for message of type 'KillService-request"
  (cl:format cl:nil "bool Kill_isChecked~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KillService-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KillService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'KillService-request
    (cl:cons ':Kill_isChecked (Kill_isChecked msg))
))
;//! \htmlinclude KillService-response.msg.html

(cl:defclass <KillService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass KillService-response (<KillService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KillService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KillService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rqt_mypkg-srv:<KillService-response> is deprecated: use rqt_mypkg-srv:KillService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KillService-response>) ostream)
  "Serializes a message object of type '<KillService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KillService-response>) istream)
  "Deserializes a message object of type '<KillService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KillService-response>)))
  "Returns string type for a service object of type '<KillService-response>"
  "rqt_mypkg/KillServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KillService-response)))
  "Returns string type for a service object of type 'KillService-response"
  "rqt_mypkg/KillServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KillService-response>)))
  "Returns md5sum for a message object of type '<KillService-response>"
  "2f50e671bde85037531fb7afb9fea841")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KillService-response)))
  "Returns md5sum for a message object of type 'KillService-response"
  "2f50e671bde85037531fb7afb9fea841")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KillService-response>)))
  "Returns full string definition for message of type '<KillService-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KillService-response)))
  "Returns full string definition for message of type 'KillService-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KillService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KillService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'KillService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'KillService)))
  'KillService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'KillService)))
  'KillService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KillService)))
  "Returns string type for a service object of type '<KillService>"
  "rqt_mypkg/KillService")