; Auto-generated. Do not edit!


(cl:in-package rqt_mypkg-srv)


;//! \htmlinclude TiltService-request.msg.html

(cl:defclass <TiltService-request> (roslisp-msg-protocol:ros-message)
  ((Tilt_isChecked
    :reader Tilt_isChecked
    :initarg :Tilt_isChecked
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TiltService-request (<TiltService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TiltService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TiltService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rqt_mypkg-srv:<TiltService-request> is deprecated: use rqt_mypkg-srv:TiltService-request instead.")))

(cl:ensure-generic-function 'Tilt_isChecked-val :lambda-list '(m))
(cl:defmethod Tilt_isChecked-val ((m <TiltService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rqt_mypkg-srv:Tilt_isChecked-val is deprecated.  Use rqt_mypkg-srv:Tilt_isChecked instead.")
  (Tilt_isChecked m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TiltService-request>) ostream)
  "Serializes a message object of type '<TiltService-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Tilt_isChecked) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TiltService-request>) istream)
  "Deserializes a message object of type '<TiltService-request>"
    (cl:setf (cl:slot-value msg 'Tilt_isChecked) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TiltService-request>)))
  "Returns string type for a service object of type '<TiltService-request>"
  "rqt_mypkg/TiltServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TiltService-request)))
  "Returns string type for a service object of type 'TiltService-request"
  "rqt_mypkg/TiltServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TiltService-request>)))
  "Returns md5sum for a message object of type '<TiltService-request>"
  "255a80a4a8236b9a7fbfacc2e90e9a25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TiltService-request)))
  "Returns md5sum for a message object of type 'TiltService-request"
  "255a80a4a8236b9a7fbfacc2e90e9a25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TiltService-request>)))
  "Returns full string definition for message of type '<TiltService-request>"
  (cl:format cl:nil "bool Tilt_isChecked~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TiltService-request)))
  "Returns full string definition for message of type 'TiltService-request"
  (cl:format cl:nil "bool Tilt_isChecked~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TiltService-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TiltService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TiltService-request
    (cl:cons ':Tilt_isChecked (Tilt_isChecked msg))
))
;//! \htmlinclude TiltService-response.msg.html

(cl:defclass <TiltService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TiltService-response (<TiltService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TiltService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TiltService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rqt_mypkg-srv:<TiltService-response> is deprecated: use rqt_mypkg-srv:TiltService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TiltService-response>) ostream)
  "Serializes a message object of type '<TiltService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TiltService-response>) istream)
  "Deserializes a message object of type '<TiltService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TiltService-response>)))
  "Returns string type for a service object of type '<TiltService-response>"
  "rqt_mypkg/TiltServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TiltService-response)))
  "Returns string type for a service object of type 'TiltService-response"
  "rqt_mypkg/TiltServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TiltService-response>)))
  "Returns md5sum for a message object of type '<TiltService-response>"
  "255a80a4a8236b9a7fbfacc2e90e9a25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TiltService-response)))
  "Returns md5sum for a message object of type 'TiltService-response"
  "255a80a4a8236b9a7fbfacc2e90e9a25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TiltService-response>)))
  "Returns full string definition for message of type '<TiltService-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TiltService-response)))
  "Returns full string definition for message of type 'TiltService-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TiltService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TiltService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TiltService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TiltService)))
  'TiltService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TiltService)))
  'TiltService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TiltService)))
  "Returns string type for a service object of type '<TiltService>"
  "rqt_mypkg/TiltService")