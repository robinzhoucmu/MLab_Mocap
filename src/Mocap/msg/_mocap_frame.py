"""autogenerated by genpy from Mocap/mocap_frame.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import Mocap.msg
import std_msgs.msg

class mocap_frame(genpy.Message):
  _md5sum = "1a6d089936177be68712dd54f291892c"
  _type = "Mocap/mocap_frame"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header
int64 number
geometry_msgs/PoseArray body_poses
# Unidenfied markers. (E.g., the single marker used for calibration).	
Mocap/marker_set uid_markers
# The set of identified markers.
Mocap/marker_set[] id_marker_sets
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.secs: seconds (stamp_secs) since epoch
# * stamp.nsecs: nanoseconds since stamp_secs
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: Mocap/marker_set
geometry_msgs/Point[] markers
"""
  __slots__ = ['header','number','body_poses','uid_markers','id_marker_sets']
  _slot_types = ['std_msgs/Header','int64','geometry_msgs/PoseArray','Mocap/marker_set','Mocap/marker_set[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,number,body_poses,uid_markers,id_marker_sets

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(mocap_frame, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.number is None:
        self.number = 0
      if self.body_poses is None:
        self.body_poses = geometry_msgs.msg.PoseArray()
      if self.uid_markers is None:
        self.uid_markers = Mocap.msg.marker_set()
      if self.id_marker_sets is None:
        self.id_marker_sets = []
    else:
      self.header = std_msgs.msg.Header()
      self.number = 0
      self.body_poses = geometry_msgs.msg.PoseArray()
      self.uid_markers = Mocap.msg.marker_set()
      self.id_marker_sets = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_q3I.pack(_x.number, _x.body_poses.header.seq, _x.body_poses.header.stamp.secs, _x.body_poses.header.stamp.nsecs))
      _x = self.body_poses.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.body_poses.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.body_poses.poses:
        _v1 = val1.position
        _x = _v1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v2 = val1.orientation
        _x = _v2
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
      length = len(self.uid_markers.markers)
      buff.write(_struct_I.pack(length))
      for val1 in self.uid_markers.markers:
        _x = val1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
      length = len(self.id_marker_sets)
      buff.write(_struct_I.pack(length))
      for val1 in self.id_marker_sets:
        length = len(val1.markers)
        buff.write(_struct_I.pack(length))
        for val2 in val1.markers:
          _x = val2
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.body_poses is None:
        self.body_poses = geometry_msgs.msg.PoseArray()
      if self.uid_markers is None:
        self.uid_markers = Mocap.msg.marker_set()
      if self.id_marker_sets is None:
        self.id_marker_sets = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.number, _x.body_poses.header.seq, _x.body_poses.header.stamp.secs, _x.body_poses.header.stamp.nsecs,) = _struct_q3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.body_poses.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.body_poses.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.body_poses.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose()
        _v3 = val1.position
        _x = _v3
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v4 = val1.orientation
        _x = _v4
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        self.body_poses.poses.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.uid_markers.markers = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        self.uid_markers.markers.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.id_marker_sets = []
      for i in range(0, length):
        val1 = Mocap.msg.marker_set()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.markers = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          val1.markers.append(val2)
        self.id_marker_sets.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_q3I.pack(_x.number, _x.body_poses.header.seq, _x.body_poses.header.stamp.secs, _x.body_poses.header.stamp.nsecs))
      _x = self.body_poses.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.body_poses.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.body_poses.poses:
        _v5 = val1.position
        _x = _v5
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v6 = val1.orientation
        _x = _v6
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
      length = len(self.uid_markers.markers)
      buff.write(_struct_I.pack(length))
      for val1 in self.uid_markers.markers:
        _x = val1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
      length = len(self.id_marker_sets)
      buff.write(_struct_I.pack(length))
      for val1 in self.id_marker_sets:
        length = len(val1.markers)
        buff.write(_struct_I.pack(length))
        for val2 in val1.markers:
          _x = val2
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.body_poses is None:
        self.body_poses = geometry_msgs.msg.PoseArray()
      if self.uid_markers is None:
        self.uid_markers = Mocap.msg.marker_set()
      if self.id_marker_sets is None:
        self.id_marker_sets = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.number, _x.body_poses.header.seq, _x.body_poses.header.stamp.secs, _x.body_poses.header.stamp.nsecs,) = _struct_q3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.body_poses.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.body_poses.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.body_poses.poses = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose()
        _v7 = val1.position
        _x = _v7
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v8 = val1.orientation
        _x = _v8
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        self.body_poses.poses.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.uid_markers.markers = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        self.uid_markers.markers.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.id_marker_sets = []
      for i in range(0, length):
        val1 = Mocap.msg.marker_set()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.markers = []
        for i in range(0, length):
          val2 = geometry_msgs.msg.Point()
          _x = val2
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          val1.markers.append(val2)
        self.id_marker_sets.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_4d = struct.Struct("<4d")
_struct_3I = struct.Struct("<3I")
_struct_q3I = struct.Struct("<q3I")
_struct_3d = struct.Struct("<3d")
