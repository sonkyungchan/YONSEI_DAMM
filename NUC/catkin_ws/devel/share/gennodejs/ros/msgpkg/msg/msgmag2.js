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

class msgmag2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mag2 = null;
    }
    else {
      if (initObj.hasOwnProperty('mag2')) {
        this.mag2 = initObj.mag2
      }
      else {
        this.mag2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msgmag2
    // Serialize message field [mag2]
    bufferOffset = _serializer.float32(obj.mag2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msgmag2
    let len;
    let data = new msgmag2(null);
    // Deserialize message field [mag2]
    data.mag2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgpkg/msgmag2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0bc0b38d8ef0e3a66f9ed02f56e05589';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 mag2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msgmag2(null);
    if (msg.mag2 !== undefined) {
      resolved.mag2 = msg.mag2;
    }
    else {
      resolved.mag2 = 0.0
    }

    return resolved;
    }
};

module.exports = msgmag2;
