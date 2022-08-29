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

class realVal3 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.realPos1 = null;
      this.realPos2 = null;
      this.adc1 = null;
      this.adc2 = null;
      this.adc3 = null;
      this.adc4 = null;
      this.command1 = null;
      this.command2 = null;
    }
    else {
      if (initObj.hasOwnProperty('realPos1')) {
        this.realPos1 = initObj.realPos1
      }
      else {
        this.realPos1 = 0;
      }
      if (initObj.hasOwnProperty('realPos2')) {
        this.realPos2 = initObj.realPos2
      }
      else {
        this.realPos2 = 0;
      }
      if (initObj.hasOwnProperty('adc1')) {
        this.adc1 = initObj.adc1
      }
      else {
        this.adc1 = 0;
      }
      if (initObj.hasOwnProperty('adc2')) {
        this.adc2 = initObj.adc2
      }
      else {
        this.adc2 = 0;
      }
      if (initObj.hasOwnProperty('adc3')) {
        this.adc3 = initObj.adc3
      }
      else {
        this.adc3 = 0;
      }
      if (initObj.hasOwnProperty('adc4')) {
        this.adc4 = initObj.adc4
      }
      else {
        this.adc4 = 0;
      }
      if (initObj.hasOwnProperty('command1')) {
        this.command1 = initObj.command1
      }
      else {
        this.command1 = 0.0;
      }
      if (initObj.hasOwnProperty('command2')) {
        this.command2 = initObj.command2
      }
      else {
        this.command2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type realVal3
    // Serialize message field [realPos1]
    bufferOffset = _serializer.int64(obj.realPos1, buffer, bufferOffset);
    // Serialize message field [realPos2]
    bufferOffset = _serializer.int64(obj.realPos2, buffer, bufferOffset);
    // Serialize message field [adc1]
    bufferOffset = _serializer.int64(obj.adc1, buffer, bufferOffset);
    // Serialize message field [adc2]
    bufferOffset = _serializer.int64(obj.adc2, buffer, bufferOffset);
    // Serialize message field [adc3]
    bufferOffset = _serializer.int64(obj.adc3, buffer, bufferOffset);
    // Serialize message field [adc4]
    bufferOffset = _serializer.int64(obj.adc4, buffer, bufferOffset);
    // Serialize message field [command1]
    bufferOffset = _serializer.float64(obj.command1, buffer, bufferOffset);
    // Serialize message field [command2]
    bufferOffset = _serializer.float64(obj.command2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type realVal3
    let len;
    let data = new realVal3(null);
    // Deserialize message field [realPos1]
    data.realPos1 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [realPos2]
    data.realPos2 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [adc1]
    data.adc1 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [adc2]
    data.adc2 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [adc3]
    data.adc3 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [adc4]
    data.adc4 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [command1]
    data.command1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [command2]
    data.command2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgpkg/realVal3';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a1e673a40df61e466a877827a9e4183';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 realPos1
    int64 realPos2
    int64 adc1
    int64 adc2
    int64 adc3
    int64 adc4
    float64 command1
    float64 command2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new realVal3(null);
    if (msg.realPos1 !== undefined) {
      resolved.realPos1 = msg.realPos1;
    }
    else {
      resolved.realPos1 = 0
    }

    if (msg.realPos2 !== undefined) {
      resolved.realPos2 = msg.realPos2;
    }
    else {
      resolved.realPos2 = 0
    }

    if (msg.adc1 !== undefined) {
      resolved.adc1 = msg.adc1;
    }
    else {
      resolved.adc1 = 0
    }

    if (msg.adc2 !== undefined) {
      resolved.adc2 = msg.adc2;
    }
    else {
      resolved.adc2 = 0
    }

    if (msg.adc3 !== undefined) {
      resolved.adc3 = msg.adc3;
    }
    else {
      resolved.adc3 = 0
    }

    if (msg.adc4 !== undefined) {
      resolved.adc4 = msg.adc4;
    }
    else {
      resolved.adc4 = 0
    }

    if (msg.command1 !== undefined) {
      resolved.command1 = msg.command1;
    }
    else {
      resolved.command1 = 0.0
    }

    if (msg.command2 !== undefined) {
      resolved.command2 = msg.command2;
    }
    else {
      resolved.command2 = 0.0
    }

    return resolved;
    }
};

module.exports = realVal3;
