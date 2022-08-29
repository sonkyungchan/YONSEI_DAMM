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

class msgf1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.for1 = null;
    }
    else {
      if (initObj.hasOwnProperty('for1')) {
        this.for1 = initObj.for1
      }
      else {
        this.for1 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msgf1
    // Serialize message field [for1]
    bufferOffset = _serializer.float32(obj.for1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msgf1
    let len;
    let data = new msgf1(null);
    // Deserialize message field [for1]
    data.for1 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgpkg/msgf1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e496f6ad40f2ceb95bb6fa115defb5e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 for1
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msgf1(null);
    if (msg.for1 !== undefined) {
      resolved.for1 = msg.for1;
    }
    else {
      resolved.for1 = 0.0
    }

    return resolved;
    }
};

module.exports = msgf1;
