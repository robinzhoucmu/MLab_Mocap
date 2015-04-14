; Auto-generated. Do not edit!


(cl:in-package Mocap-srv)


;//! \htmlinclude mocap_GetMocapFrame-request.msg.html

(cl:defclass <mocap_GetMocapFrame-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass mocap_GetMocapFrame-request (<mocap_GetMocapFrame-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mocap_GetMocapFrame-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mocap_GetMocapFrame-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Mocap-srv:<mocap_GetMocapFrame-request> is deprecated: use Mocap-srv:mocap_GetMocapFrame-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mocap_GetMocapFrame-request>) ostream)
  "Serializes a message object of type '<mocap_GetMocapFrame-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mocap_GetMocapFrame-request>) istream)
  "Deserializes a message object of type '<mocap_GetMocapFrame-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mocap_GetMocapFrame-request>)))
  "Returns string type for a service object of type '<mocap_GetMocapFrame-request>"
  "Mocap/mocap_GetMocapFrameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mocap_GetMocapFrame-request)))
  "Returns string type for a service object of type 'mocap_GetMocapFrame-request"
  "Mocap/mocap_GetMocapFrameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mocap_GetMocapFrame-request>)))
  "Returns md5sum for a message object of type '<mocap_GetMocapFrame-request>"
  "88eb9becce3c4d765d589b1c8e5c1b44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mocap_GetMocapFrame-request)))
  "Returns md5sum for a message object of type 'mocap_GetMocapFrame-request"
  "88eb9becce3c4d765d589b1c8e5c1b44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mocap_GetMocapFrame-request>)))
  "Returns full string definition for message of type '<mocap_GetMocapFrame-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mocap_GetMocapFrame-request)))
  "Returns full string definition for message of type 'mocap_GetMocapFrame-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mocap_GetMocapFrame-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mocap_GetMocapFrame-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mocap_GetMocapFrame-request
))
;//! \htmlinclude mocap_GetMocapFrame-response.msg.html

(cl:defclass <mocap_GetMocapFrame-response> (roslisp-msg-protocol:ros-message)
  ((mf
    :reader mf
    :initarg :mf
    :type Mocap-msg:mocap_frame
    :initform (cl:make-instance 'Mocap-msg:mocap_frame))
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

(cl:defclass mocap_GetMocapFrame-response (<mocap_GetMocapFrame-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mocap_GetMocapFrame-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mocap_GetMocapFrame-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Mocap-srv:<mocap_GetMocapFrame-response> is deprecated: use Mocap-srv:mocap_GetMocapFrame-response instead.")))

(cl:ensure-generic-function 'mf-val :lambda-list '(m))
(cl:defmethod mf-val ((m <mocap_GetMocapFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-srv:mf-val is deprecated.  Use Mocap-srv:mf instead.")
  (mf m))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <mocap_GetMocapFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-srv:ret-val is deprecated.  Use Mocap-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <mocap_GetMocapFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-srv:msg-val is deprecated.  Use Mocap-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mocap_GetMocapFrame-response>) ostream)
  "Serializes a message object of type '<mocap_GetMocapFrame-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mf) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mocap_GetMocapFrame-response>) istream)
  "Deserializes a message object of type '<mocap_GetMocapFrame-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mf) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mocap_GetMocapFrame-response>)))
  "Returns string type for a service object of type '<mocap_GetMocapFrame-response>"
  "Mocap/mocap_GetMocapFrameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mocap_GetMocapFrame-response)))
  "Returns string type for a service object of type 'mocap_GetMocapFrame-response"
  "Mocap/mocap_GetMocapFrameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mocap_GetMocapFrame-response>)))
  "Returns md5sum for a message object of type '<mocap_GetMocapFrame-response>"
  "88eb9becce3c4d765d589b1c8e5c1b44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mocap_GetMocapFrame-response)))
  "Returns md5sum for a message object of type 'mocap_GetMocapFrame-response"
  "88eb9becce3c4d765d589b1c8e5c1b44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mocap_GetMocapFrame-response>)))
  "Returns full string definition for message of type '<mocap_GetMocapFrame-response>"
  (cl:format cl:nil "mocap_frame mf~%int64 ret~%string msg~%~%~%================================================================================~%MSG: Mocap/mocap_frame~%Header header~%int64 number~%geometry_msgs/PoseArray body_poses~%# Unidenfied markers. (E.g., the single marker used for calibration).	~%Mocap/marker_set uid_markers~%# The set of identified markers.~%Mocap/marker_set[] id_marker_sets~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: Mocap/marker_set~%geometry_msgs/Point[] markers~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mocap_GetMocapFrame-response)))
  "Returns full string definition for message of type 'mocap_GetMocapFrame-response"
  (cl:format cl:nil "mocap_frame mf~%int64 ret~%string msg~%~%~%================================================================================~%MSG: Mocap/mocap_frame~%Header header~%int64 number~%geometry_msgs/PoseArray body_poses~%# Unidenfied markers. (E.g., the single marker used for calibration).	~%Mocap/marker_set uid_markers~%# The set of identified markers.~%Mocap/marker_set[] id_marker_sets~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: Mocap/marker_set~%geometry_msgs/Point[] markers~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mocap_GetMocapFrame-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mf))
     8
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mocap_GetMocapFrame-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mocap_GetMocapFrame-response
    (cl:cons ':mf (mf msg))
    (cl:cons ':ret (ret msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mocap_GetMocapFrame)))
  'mocap_GetMocapFrame-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mocap_GetMocapFrame)))
  'mocap_GetMocapFrame-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mocap_GetMocapFrame)))
  "Returns string type for a service object of type '<mocap_GetMocapFrame>"
  "Mocap/mocap_GetMocapFrame")