# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from geomagic_control/DeviceFeedback.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class DeviceFeedback(genpy.Message):
  _md5sum = "94755b031db27fe99c2c235c0da9b072"
  _type = "geomagic_control/DeviceFeedback"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# This is the force as estimated from the applied torques as well as the current
# end effector position of the robot arm                           
geometry_msgs/Vector3  force                                                                  
geometry_msgs/Vector3  position 
bool[] lock 
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['force','position','lock']
  _slot_types = ['geometry_msgs/Vector3','geometry_msgs/Vector3','bool[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       force,position,lock

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DeviceFeedback, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.force is None:
        self.force = geometry_msgs.msg.Vector3()
      if self.position is None:
        self.position = geometry_msgs.msg.Vector3()
      if self.lock is None:
        self.lock = []
    else:
      self.force = geometry_msgs.msg.Vector3()
      self.position = geometry_msgs.msg.Vector3()
      self.lock = []

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
      buff.write(_get_struct_6d().pack(_x.force.x, _x.force.y, _x.force.z, _x.position.x, _x.position.y, _x.position.z))
      length = len(self.lock)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(struct.Struct(pattern).pack(*self.lock))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.force is None:
        self.force = geometry_msgs.msg.Vector3()
      if self.position is None:
        self.position = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.force.x, _x.force.y, _x.force.z, _x.position.x, _x.position.y, _x.position.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.lock = s.unpack(str[start:end])
      self.lock = list(map(bool, self.lock))
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6d().pack(_x.force.x, _x.force.y, _x.force.z, _x.position.x, _x.position.y, _x.position.z))
      length = len(self.lock)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(self.lock.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.force is None:
        self.force = geometry_msgs.msg.Vector3()
      if self.position is None:
        self.position = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.force.x, _x.force.y, _x.force.z, _x.position.x, _x.position.y, _x.position.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.lock = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=length)
      self.lock = list(map(bool, self.lock))
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
