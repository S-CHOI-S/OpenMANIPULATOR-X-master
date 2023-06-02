; Auto-generated. Do not edit!


(cl:in-package rqt_mypkg-srv)


;//! \htmlinclude PosCtrlService-request.msg.html

(cl:defclass <PosCtrlService-request> (roslisp-msg-protocol:ros-message)
  ((desired_X
    :reader desired_X
    :initarg :desired_X
    :type cl:float
    :initform 0.0)
   (desired_Y
    :reader desired_Y
    :initarg :desired_Y
    :type cl:float
    :initform 0.0)
   (desired_Yaw
    :reader desired_Yaw
    :initarg :desired_Yaw
    :type cl:float
    :initform 0.0)
   (desired_Alti
    :reader desired_Alti
    :initarg :desired_Alti
    :type cl:float
    :initform 0.0))
)

(cl:defclass PosCtrlService-request (<PosCtrlService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosCtrlService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosCtrlService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rqt_mypkg-srv:<PosCtrlService-request> is deprecated: use rqt_mypkg-srv:PosCtrlService-request instead.")))

(cl:ensure-generic-function 'desired_X-val :lambda-list '(m))
(cl:defmethod desired_X-val ((m <PosCtrlService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rqt_mypkg-srv:desired_X-val is deprecated.  Use rqt_mypkg-srv:desired_X instead.")
  (desired_X m))

(cl:ensure-generic-function 'desired_Y-val :lambda-list '(m))
(cl:defmethod desired_Y-val ((m <PosCtrlService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rqt_mypkg-srv:desired_Y-val is deprecated.  Use rqt_mypkg-srv:desired_Y instead.")
  (desired_Y m))

(cl:ensure-generic-function 'desired_Yaw-val :lambda-list '(m))
(cl:defmethod desired_Yaw-val ((m <PosCtrlService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rqt_mypkg-srv:desired_Yaw-val is deprecated.  Use rqt_mypkg-srv:desired_Yaw instead.")
  (desired_Yaw m))

(cl:ensure-generic-function 'desired_Alti-val :lambda-list '(m))
(cl:defmethod desired_Alti-val ((m <PosCtrlService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rqt_mypkg-srv:desired_Alti-val is deprecated.  Use rqt_mypkg-srv:desired_Alti instead.")
  (desired_Alti m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosCtrlService-request>) ostream)
  "Serializes a message object of type '<PosCtrlService-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'desired_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'desired_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'desired_Yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'desired_Alti))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosCtrlService-request>) istream)
  "Deserializes a message object of type '<PosCtrlService-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_Yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_Alti) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosCtrlService-request>)))
  "Returns string type for a service object of type '<PosCtrlService-request>"
  "rqt_mypkg/PosCtrlServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosCtrlService-request)))
  "Returns string type for a service object of type 'PosCtrlService-request"
  "rqt_mypkg/PosCtrlServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosCtrlService-request>)))
  "Returns md5sum for a message object of type '<PosCtrlService-request>"
  "80a636fc1acfa66a2cafa05380613d88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosCtrlService-request)))
  "Returns md5sum for a message object of type 'PosCtrlService-request"
  "80a636fc1acfa66a2cafa05380613d88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosCtrlService-request>)))
  "Returns full string definition for message of type '<PosCtrlService-request>"
  (cl:format cl:nil "float32 desired_X~%float32 desired_Y~%float32 desired_Yaw~%float32 desired_Alti~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosCtrlService-request)))
  "Returns full string definition for message of type 'PosCtrlService-request"
  (cl:format cl:nil "float32 desired_X~%float32 desired_Y~%float32 desired_Yaw~%float32 desired_Alti~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosCtrlService-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosCtrlService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PosCtrlService-request
    (cl:cons ':desired_X (desired_X msg))
    (cl:cons ':desired_Y (desired_Y msg))
    (cl:cons ':desired_Yaw (desired_Yaw msg))
    (cl:cons ':desired_Alti (desired_Alti msg))
))
;//! \htmlinclude PosCtrlService-response.msg.html

(cl:defclass <PosCtrlService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PosCtrlService-response (<PosCtrlService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosCtrlService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosCtrlService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rqt_mypkg-srv:<PosCtrlService-response> is deprecated: use rqt_mypkg-srv:PosCtrlService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosCtrlService-response>) ostream)
  "Serializes a message object of type '<PosCtrlService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosCtrlService-response>) istream)
  "Deserializes a message object of type '<PosCtrlService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosCtrlService-response>)))
  "Returns string type for a service object of type '<PosCtrlService-response>"
  "rqt_mypkg/PosCtrlServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosCtrlService-response)))
  "Returns string type for a service object of type 'PosCtrlService-response"
  "rqt_mypkg/PosCtrlServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosCtrlService-response>)))
  "Returns md5sum for a message object of type '<PosCtrlService-response>"
  "80a636fc1acfa66a2cafa05380613d88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosCtrlService-response)))
  "Returns md5sum for a message object of type 'PosCtrlService-response"
  "80a636fc1acfa66a2cafa05380613d88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosCtrlService-response>)))
  "Returns full string definition for message of type '<PosCtrlService-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosCtrlService-response)))
  "Returns full string definition for message of type 'PosCtrlService-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosCtrlService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosCtrlService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PosCtrlService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PosCtrlService)))
  'PosCtrlService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PosCtrlService)))
  'PosCtrlService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosCtrlService)))
  "Returns string type for a service object of type '<PosCtrlService>"
  "rqt_mypkg/PosCtrlService")