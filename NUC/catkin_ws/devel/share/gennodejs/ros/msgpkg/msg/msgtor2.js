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

class msgtor2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tor1 = null;
      this.tor2 = null;
    }
    else {
      if (initObj.hasOwnProperty('tor1')) {
        this.tor1 = initObj.tor1
      }
      else {
        this.tor1 = 0.0;
      }
      if (initObj.hasOwnProperty('tor2')) {
        this.tor2 = initObj.tor2
      }
      else {
        this.tor2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msgtor2
    // Serialize message field [tor1]
    bufferOffset = _serializer.float32(obj.tor1, buffer, bufferOffset);
    // Serialize message field [tor2]
    bufferOffset = _serializer.float32(obj.tor2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msgtor2
    let len;
    let data = new msgtor2(null);
    // Deserialize message field [tor1]
    data.tor1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tor2]
    data.tor2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgpkg/msgtor2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c696c86de69c5c7b67b06aa4153bc27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 tor1
    float32 tor2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msgtor2(null);
    if (msg.tor1 !== undefined) {
      resolved.tor1 = msg.tor1;
    }
    else {
      resolved.tor1 = 0.0
    }

    if (msg.tor2 !== undefined) {
      resolved.tor2 = msg.tor2;
    }
    else {
      resolved.tor2 = 0.0
    }

    return resolved;
    }
};

module.exports = msgtor2;
