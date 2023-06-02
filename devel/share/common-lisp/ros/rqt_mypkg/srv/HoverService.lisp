; Auto-generated. Do not edit!


(cl:in-package rqt_mypkg-srv)


;//! \htmlinclude HoverService-request.msg.html

(cl:defclass <HoverService-request> (roslisp-msg-protocol:ros-message)
  ((isHover
    :reader isHover
    :initarg :isHover
    :type cl:boolean
    :initform cl:nil)
   (isHovering
    :reader isHovering
    :initarg :isHovering
    :type cl:boolean
    :initform cl:nil)
   (isLanding
    :reader isLanding
    :initarg :isLanding
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HoverService-request (<HoverService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HoverService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HoverService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rqt_mypkg-srv:<HoverService-request> is deprecated: use rqt_mypkg-srv:HoverService-request instead.")))

(cl:ensure-generic-function 'isHover-val :lambda-list '(m))
(cl:defmethod isHover-val ((m <HoverService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rqt_mypkg-srv:isHover-val is deprecated.  Use rqt_mypkg-srv:isHover instead.")
  (isHover m))

(cl:ensure-generic-function 'isHovering-val :lambda-list '(m))
(cl:defmethod isHovering-val ((m <HoverService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rqt_mypkg-srv:isHovering-val is deprecated.  Use rqt_mypkg-srv:isHovering instead.")
  (isHovering m))

(cl:ensure-generic-function 'isLanding-val :lambda-list '(m))
(cl:defmethod isLanding-val ((m <HoverService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rqt_mypkg-srv:isLanding-val is deprecated.  Use rqt_mypkg-srv:isLanding instead.")
  (isLanding m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HoverService-request>) ostream)
  "Serializes a message object of type '<HoverService-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isHover) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isHovering) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isLanding) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HoverService-request>) istream)
  "Deserializes a message object of type '<HoverService-request>"
    (cl:setf (cl:slot-value msg 'isHover) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isHovering) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isLanding) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HoverService-request>)))
  "Returns string type for a service object of type '<HoverService-request>"
  "rqt_mypkg/HoverServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HoverService-request)))
  "Returns string type for a service object of type 'HoverService-request"
  "rqt_mypkg/HoverServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HoverService-request>)))
  "Returns md5sum for a message object of type '<HoverService-request>"
  "8930d5ae44ec72110e415a4dfe50939b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HoverService-request)))
  "Returns md5sum for a message object of type 'HoverService-request"
  "8930d5ae44ec72110e415a4dfe50939b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HoverService-request>)))
  "Returns full string definition for message of type '<HoverService-request>"
  (cl:format cl:nil "bool isHover~%bool isHovering~%bool isLanding~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HoverService-request)))
  "Returns full string definition for message of type 'HoverService-request"
  (cl:format cl:nil "bool isHover~%bool isHovering~%bool isLanding~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HoverService-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HoverService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HoverService-request
    (cl:cons ':isHover (isHover msg))
    (cl:cons ':isHovering (isHovering msg))
    (cl:cons ':isLanding (isLanding msg))
))
;//! \htmlinclude HoverService-response.msg.html

(cl:defclass <HoverService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass HoverService-response (<HoverService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HoverService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HoverService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rqt_mypkg-srv:<HoverService-response> is deprecated: use rqt_mypkg-srv:HoverService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HoverService-response>) ostream)
  "Serializes a message object of type '<HoverService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HoverService-response>) istream)
  "Deserializes a message object of type '<HoverService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HoverService-response>)))
  "Returns string type for a service object of type '<HoverService-response>"
  "rqt_mypkg/HoverServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HoverService-response)))
  "Returns string type for a service object of type 'HoverService-response"
  "rqt_mypkg/HoverServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HoverService-response>)))
  "Returns md5sum for a message object of type '<HoverService-response>"
  "8930d5ae44ec72110e415a4dfe50939b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HoverService-response)))
  "Returns md5sum for a message object of type 'HoverService-response"
  "8930d5ae44ec72110e415a4dfe50939b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HoverService-response>)))
  "Returns full string definition for message of type '<HoverService-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HoverService-response)))
  "Returns full string definition for message of type 'HoverService-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HoverService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HoverService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HoverService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HoverService)))
  'HoverService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HoverService)))
  'HoverService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HoverService)))
  "Returns string type for a service object of type '<HoverService>"
  "rqt_mypkg/HoverService")