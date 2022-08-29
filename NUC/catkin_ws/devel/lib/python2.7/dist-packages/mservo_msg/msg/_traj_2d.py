# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mservo_msg/traj_2d.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mservo_msg.msg

class traj_2d(genpy.Message):
  _md5sum = "1e758c7f7f248e577c2b0cf954d10ea6"
  _type = "mservo_msg/traj_2d"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """traj_1d[50] traj_2d

================================================================================
MSG: mservo_msg/traj_1d
float64[7] traj
"""
  __slots__ = ['traj_2d']
  _slot_types = ['mservo_msg/traj_1d[50]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       traj_2d

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(traj_2d, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.traj_2d is None:
        self.traj_2d = [mservo_msg.msg.traj_1d() for _ in range(50)]
    else:
      self.traj_2d = [mservo_msg.msg.traj_1d() for _ in range(50)]

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
      if len(self.traj_2d) != 50:
        self._check_types(ValueError("Expecting %s items but found %s when writing '%s'" % (50, len(self.traj_2d), 'self.traj_2d')))
      for val1 in self.traj_2d:
        buff.write(_get_struct_7d().pack(*val1.traj))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.traj_2d is None:
        self.traj_2d = None
      end = 0
      self.traj_2d = []
      for i in range(0, 50):
        val1 = mservo_msg.msg.traj_1d()
        start = end
        end += 56
        val1.traj = _get_struct_7d().unpack(str[start:end])
        self.traj_2d.append(val1)
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
      if len(self.traj_2d) != 50:
        self._check_types(ValueError("Expecting %s items but found %s when writing '%s'" % (50, len(self.traj_2d), 'self.traj_2d')))
      for val1 in self.traj_2d:
        buff.write(val1.traj.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.traj_2d is None:
        self.traj_2d = None
      end = 0
      self.traj_2d = []
      for i in range(0, 50):
        val1 = mservo_msg.msg.traj_1d()
        start = end
        end += 56
        val1.traj = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=7)
        self.traj_2d.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
