// Auto-generated. Do not edit!

// (in-package mobile_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class motorMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.omega1 = null;
      this.omega2 = null;
      this.omega3 = null;
      this.omega4 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('omega1')) {
        this.omega1 = initObj.omega1
      }
      else {
        this.omega1 = 0;
      }
      if (initObj.hasOwnProperty('omega2')) {
        this.omega2 = initObj.omega2
      }
      else {
        this.omega2 = 0;
      }
      if (initObj.hasOwnProperty('omega3')) {
        this.omega3 = initObj.omega3
      }
      else {
        this.omega3 = 0;
      }
      if (initObj.hasOwnProperty('omega4')) {
        this.omega4 = initObj.omega4
      }
      else {
        this.omega4 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motorMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [omega1]
    bufferOffset = _serializer.int32(obj.omega1, buffer, bufferOffset);
    // Serialize message field [omega2]
    bufferOffset = _serializer.int32(obj.omega2, buffer, bufferOffset);
    // Serialize message field [omega3]
    bufferOffset = _serializer.int32(obj.omega3, buffer, bufferOffset);
    // Serialize message field [omega4]
    bufferOffset = _serializer.int32(obj.omega4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motorMsg
    let len;
    let data = new motorMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [omega1]
    data.omega1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [omega2]
    data.omega2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [omega3]
    data.omega3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [omega4]
    data.omega4 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_control/motorMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc96ee74795dd87ba70013bf55e8a168';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int32 omega1
    int32 omega2
    int32 omega3
    int32 omega4
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motorMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.omega1 !== undefined) {
      resolved.omega1 = msg.omega1;
    }
    else {
      resolved.omega1 = 0
    }

    if (msg.omega2 !== undefined) {
      resolved.omega2 = msg.omega2;
    }
    else {
      resolved.omega2 = 0
    }

    if (msg.omega3 !== undefined) {
      resolved.omega3 = msg.omega3;
    }
    else {
      resolved.omega3 = 0
    }

    if (msg.omega4 !== undefined) {
      resolved.omega4 = msg.omega4;
    }
    else {
      resolved.omega4 = 0
    }

    return resolved;
    }
};

module.exports = motorMsg;
