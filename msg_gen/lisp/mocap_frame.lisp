; Auto-generated. Do not edit!


(cl:in-package Mocap-msg)


;//! \htmlinclude mocap_frame.msg.html

(cl:defclass <mocap_frame> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (number
    :reader number
    :initarg :number
    :type cl:integer
    :initform 0)
   (body_poses
    :reader body_poses
    :initarg :body_poses
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (uid_markers
    :reader uid_markers
    :initarg :uid_markers
    :type Mocap-msg:marker_set
    :initform (cl:make-instance 'Mocap-msg:marker_set))
   (id_marker_sets
    :reader id_marker_sets
    :initarg :id_marker_sets
    :type (cl:vector Mocap-msg:marker_set)
   :initform (cl:make-array 0 :element-type 'Mocap-msg:marker_set :initial-element (cl:make-instance 'Mocap-msg:marker_set))))
)

(cl:defclass mocap_frame (<mocap_frame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mocap_frame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mocap_frame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Mocap-msg:<mocap_frame> is deprecated: use Mocap-msg:mocap_frame instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <mocap_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-msg:header-val is deprecated.  Use Mocap-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <mocap_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-msg:number-val is deprecated.  Use Mocap-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'body_poses-val :lambda-list '(m))
(cl:defmethod body_poses-val ((m <mocap_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-msg:body_poses-val is deprecated.  Use Mocap-msg:body_poses instead.")
  (body_poses m))

(cl:ensure-generic-function 'uid_markers-val :lambda-list '(m))
(cl:defmethod uid_markers-val ((m <mocap_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-msg:uid_markers-val is deprecated.  Use Mocap-msg:uid_markers instead.")
  (uid_markers m))

(cl:ensure-generic-function 'id_marker_sets-val :lambda-list '(m))
(cl:defmethod id_marker_sets-val ((m <mocap_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Mocap-msg:id_marker_sets-val is deprecated.  Use Mocap-msg:id_marker_sets instead.")
  (id_marker_sets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mocap_frame>) ostream)
  "Serializes a message object of type '<mocap_frame>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body_poses) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uid_markers) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'id_marker_sets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'id_marker_sets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mocap_frame>) istream)
  "Deserializes a message object of type '<mocap_frame>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body_poses) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uid_markers) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'id_marker_sets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'id_marker_sets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'Mocap-msg:marker_set))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mocap_frame>)))
  "Returns string type for a message object of type '<mocap_frame>"
  "Mocap/mocap_frame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mocap_frame)))
  "Returns string type for a message object of type 'mocap_frame"
  "Mocap/mocap_frame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mocap_frame>)))
  "Returns md5sum for a message object of type '<mocap_frame>"
  "1a6d089936177be68712dd54f291892c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mocap_frame)))
  "Returns md5sum for a message object of type 'mocap_frame"
  "1a6d089936177be68712dd54f291892c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mocap_frame>)))
  "Returns full string definition for message of type '<mocap_frame>"
  (cl:format cl:nil "Header header~%int64 number~%geometry_msgs/PoseArray body_poses~%# Unidenfied markers. (E.g., the single marker used for calibration).	~%Mocap/marker_set uid_markers~%# The set of identified markers.~%Mocap/marker_set[] id_marker_sets~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: Mocap/marker_set~%geometry_msgs/Point[] markers~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mocap_frame)))
  "Returns full string definition for message of type 'mocap_frame"
  (cl:format cl:nil "Header header~%int64 number~%geometry_msgs/PoseArray body_poses~%# Unidenfied markers. (E.g., the single marker used for calibration).	~%Mocap/marker_set uid_markers~%# The set of identified markers.~%Mocap/marker_set[] id_marker_sets~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: Mocap/marker_set~%geometry_msgs/Point[] markers~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mocap_frame>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body_poses))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uid_markers))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id_marker_sets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mocap_frame>))
  "Converts a ROS message object to a list"
  (cl:list 'mocap_frame
    (cl:cons ':header (header msg))
    (cl:cons ':number (number msg))
    (cl:cons ':body_poses (body_poses msg))
    (cl:cons ':uid_markers (uid_markers msg))
    (cl:cons ':id_marker_sets (id_marker_sets msg))
))
