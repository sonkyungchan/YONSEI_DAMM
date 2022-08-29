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

class msgf2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.for2 = null;
    }
    else {
      if (initObj.hasOwnProperty('for2')) {
        this.for2 = initObj.for2
      }
      else {
        this.for2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msgf2
    // Serialize message field [for2]
    bufferOffset = _serializer.float32(obj.for2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msgf2
    let len;
    let data = new msgf2(null);
    // Deserialize message field [for2]
    data.for2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgpkg/msgf2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '055ebaaa36f43d418526ea4a0cc9f35e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 for2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msgf2(null);
    if (msg.for2 !== undefined) {
      resolved.for2 = msg.for2;
    }
    else {
      resolved.for2 = 0.0
    }

    return resolved;
    }
};

module.exports = msgf2;
