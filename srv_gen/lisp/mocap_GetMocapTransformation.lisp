; Auto-generated. Do not edit!


(cl:in-package Mocap-srv)


;//! \htmlinclude mocap_GetMocapTransformation-request.msg.html

(cl:defclass <mocap_GetMocapTransformation-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass mocap_GetMocapTransformation-request (<mocap_GetMocapTransformation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mocap_GetMocapTransformation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mocap_GetMocapTransformation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Mocap-srv:<mocap_GetMocapTransformation-request> is deprecated: use Mocap-srv:mocap_GetMocapTransformation-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mocap_GetMocapTransformation-request>) ostream)
  "Serializes a message object of type '<mocap_GetMocapTransformation-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mocap_GetMocapTransformation-request>) istream)
  "Deserializes a message object of type '<mocap_GetMocapTransformation-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mocap_GetMocapTransformation-request>)))
  "Returns string type for a service object of type '<mocap_GetMocapTransformation-request>"
  "Mocap/mocap_GetMocapTransformationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mocap_GetMocapTransformation-request)))
  "Returns string type for a service object of type 'mocap_GetMocapTransformation-request"
  "Mocap/mocap_GetMocapTransformationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mocap_GetMocapTransformation-request>)))
  "Returns md5sum for a message object of type '<mocap_GetMocapTransformation-request>"
  "3f432c2b24231bfa1982c3d95599d931")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mocap_GetMocapTransformation-request)))
  "Returns md5sum for a message object of type 'mocap_GetMocapTransformation-request"
  "3f432c2b24231bfa1982c3d95599d931")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mocap_GetMocapTransformation-request>)))
  "Returns full string definition for message of type '<mocap_GetMocapTransformation-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mocap_GetMocapTransformation-request)))
  "Returns full string definition for message of type 'mocap_GetMocapTransformation-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mocap_GetMocapTransformation-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mocap_GetMocapTransformation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mocap_GetMocapTransformation-request
))
;//! \htmlinclude mocap_GetMocapTransformation-response.msg.html

(cl:defclass <mocap_GetMocapTransformation-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (q0
    :reader q0
    :initarg :q0
    :type cl:float
    :initform 0.0)
   (qx
    :reader qx
    :initarg :qx
    :type cl:float
    :initform 0.0)
   (qy
    :reader qy
    :initarg :qy
    :type cl:float
    :initform 0.0)
   (qz
    :reader qz
    :initarg :qz
    :type cl:float
    :initform 0.0)
   (ret
    :reader ret
    :initarg :ret
    :type cl:integer
    :initform 0)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass mocap_GetMocapTransformation-response (<mocap_GetMocapTransformation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mocap_GetMocapTransformation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mocap_GetMocapTransformation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Mocap-srv:<mocap_GetMocapTransformation-response> is deprecated: use Mocap-srv:mocap_GetMocapTransformation-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <mocap_GetMocapTransformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-srv:x-val is deprecated.  Use Mocap-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <mocap_GetMocapTransformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-srv:y-val is deprecated.  Use Mocap-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <mocap_GetMocapTransformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-srv:z-val is deprecated.  Use Mocap-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'q0-val :lambda-list '(m))
(cl:defmethod q0-val ((m <mocap_GetMocapTransformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-srv:q0-val is deprecated.  Use Mocap-srv:q0 instead.")
  (q0 m))

(cl:ensure-generic-function 'qx-val :lambda-list '(m))
(cl:defmethod qx-val ((m <mocap_GetMocapTransformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-srv:qx-val is deprecated.  Use Mocap-srv:qx instead.")
  (qx m))

(cl:ensure-generic-function 'qy-val :lambda-list '(m))
(cl:defmethod qy-val ((m <mocap_GetMocapTransformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-srv:qy-val is deprecated.  Use Mocap-srv:qy instead.")
  (qy m))

(cl:ensure-generic-function 'qz-val :lambda-list '(m))
(cl:defmethod qz-val ((m <mocap_GetMocapTransformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-srv:qz-val is deprecated.  Use Mocap-srv:qz instead.")
  (qz m))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <mocap_GetMocapTransformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-srv:ret-val is deprecated.  Use Mocap-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <mocap_GetMocapTransformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-srv:msg-val is deprecated.  Use Mocap-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mocap_GetMocapTransformation-response>) ostream)
  "Serializes a message object of type '<mocap_GetMocapTransformation-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'q0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'qx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'qy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'qz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'ret)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mocap_GetMocapTransformation-response>) istream)
  "Deserializes a message object of type '<mocap_GetMocapTransformation-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'qx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'qy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'qz) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mocap_GetMocapTransformation-response>)))
  "Returns string type for a service object of type '<mocap_GetMocapTransformation-response>"
  "Mocap/mocap_GetMocapTransformationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mocap_GetMocapTransformation-response)))
  "Returns string type for a service object of type 'mocap_GetMocapTransformation-response"
  "Mocap/mocap_GetMocapTransformationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mocap_GetMocapTransformation-response>)))
  "Returns md5sum for a message object of type '<mocap_GetMocapTransformation-response>"
  "3f432c2b24231bfa1982c3d95599d931")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mocap_GetMocapTransformation-response)))
  "Returns md5sum for a message object of type 'mocap_GetMocapTransformation-response"
  "3f432c2b24231bfa1982c3d95599d931")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mocap_GetMocapTransformation-response>)))
  "Returns full string definition for message of type '<mocap_GetMocapTransformation-response>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%float64 q0~%float64 qx~%float64 qy~%float64 qz~%int64 ret~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mocap_GetMocapTransformation-response)))
  "Returns full string definition for message of type 'mocap_GetMocapTransformation-response"
  (cl:format cl:nil "float64 x~%float64 y~%float64 z~%float64 q0~%float64 qx~%float64 qy~%float64 qz~%int64 ret~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mocap_GetMocapTransformation-response>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mocap_GetMocapTransformation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mocap_GetMocapTransformation-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':q0 (q0 msg))
    (cl:cons ':qx (qx msg))
    (cl:cons ':qy (qy msg))
    (cl:cons ':qz (qz msg))
    (cl:cons ':ret (ret msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mocap_GetMocapTransformation)))
  'mocap_GetMocapTransformation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mocap_GetMocapTransformation)))
  'mocap_GetMocapTransformation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mocap_GetMocapTransformation)))
  "Returns string type for a service object of type '<mocap_GetMocapTransformation>"
  "Mocap/mocap_GetMocapTransformation")