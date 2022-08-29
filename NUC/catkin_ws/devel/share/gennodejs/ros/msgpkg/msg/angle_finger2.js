// Auto-generated. Do not edit!

// (in-package msgpkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class angle_finger2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Data1 = null;
      this.Data2 = null;
    }
    else {
      if (initObj.hasOwnProperty('Data1')) {
        this.Data1 = initObj.Data1
      }
      else {
        this.Data1 = 0.0;
      }
      if (initObj.hasOwnProperty('Data2')) {
        this.Data2 = initObj.Data2
      }
      else {
        this.Data2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type angle_finger2
    // Serialize message field [Data1]
    bufferOffset = _serializer.float32(obj.Data1, buffer, bufferOffset);
    // Serialize message field [Data2]
    bufferOffset = _serializer.float32(obj.Data2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type angle_finger2
    let len;
    let data = new angle_finger2(null);
    // Deserialize message field [Data1]
    data.Data1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Data2]
    data.Data2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgpkg/angle_finger2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '367b263b399638238803cd74c6366c91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Data1
    float32 Data2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new angle_finger2(null);
    if (msg.Data1 !== undefined) {
      resolved.Data1 = msg.Data1;
    }
    else {
      resolved.Data1 = 0.0
    }

    if (msg.Data2 !== undefined) {
      resolved.Data2 = msg.Data2;
    }
    else {
      resolved.Data2 = 0.0
    }

    return resolved;
    }
};

module.exports = angle_finger2;
