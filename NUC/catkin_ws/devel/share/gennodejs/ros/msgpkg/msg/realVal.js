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

class realVal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.realPos = null;
      this.motPos = null;
      this.command = null;
      this.adc1 = null;
      this.adc2 = null;
      this.fss = null;
      this.par1 = null;
      this.par2 = null;
      this.par3 = null;
    }
    else {
      if (initObj.hasOwnProperty('realPos')) {
        this.realPos = initObj.realPos
      }
      else {
        this.realPos = 0;
      }
      if (initObj.hasOwnProperty('motPos')) {
        this.motPos = initObj.motPos
      }
      else {
        this.motPos = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0.0;
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
      if (initObj.hasOwnProperty('fss')) {
        this.fss = initObj.fss
      }
      else {
        this.fss = 0;
      }
      if (initObj.hasOwnProperty('par1')) {
        this.par1 = initObj.par1
      }
      else {
        this.par1 = 0.0;
      }
      if (initObj.hasOwnProperty('par2')) {
        this.par2 = initObj.par2
      }
      else {
        this.par2 = 0.0;
      }
      if (initObj.hasOwnProperty('par3')) {
        this.par3 = initObj.par3
      }
      else {
        this.par3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type realVal
    // Serialize message field [realPos]
    bufferOffset = _serializer.int64(obj.realPos, buffer, bufferOffset);
    // Serialize message field [motPos]
    bufferOffset = _serializer.int64(obj.motPos, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.float64(obj.command, buffer, bufferOffset);
    // Serialize message field [adc1]
    bufferOffset = _serializer.int64(obj.adc1, buffer, bufferOffset);
    // Serialize message field [adc2]
    bufferOffset = _serializer.int64(obj.adc2, buffer, bufferOffset);
    // Serialize message field [fss]
    bufferOffset = _serializer.int64(obj.fss, buffer, bufferOffset);
    // Serialize message field [par1]
    bufferOffset = _serializer.float64(obj.par1, buffer, bufferOffset);
    // Serialize message field [par2]
    bufferOffset = _serializer.float64(obj.par2, buffer, bufferOffset);
    // Serialize message field [par3]
    bufferOffset = _serializer.float64(obj.par3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type realVal
    let len;
    let data = new realVal(null);
    // Deserialize message field [realPos]
    data.realPos = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [motPos]
    data.motPos = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [adc1]
    data.adc1 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [adc2]
    data.adc2 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [fss]
    data.fss = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [par1]
    data.par1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [par2]
    data.par2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [par3]
    data.par3 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgpkg/realVal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '759db5aada8af296ae03ce0c58f9ddd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 realPos
    int64 motPos
    float64 command
    int64 adc1
    int64 adc2
    int64 fss
    float64 par1
    float64 par2
    float64 par3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new realVal(null);
    if (msg.realPos !== undefined) {
      resolved.realPos = msg.realPos;
    }
    else {
      resolved.realPos = 0
    }

    if (msg.motPos !== undefined) {
      resolved.motPos = msg.motPos;
    }
    else {
      resolved.motPos = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0.0
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

    if (msg.fss !== undefined) {
      resolved.fss = msg.fss;
    }
    else {
      resolved.fss = 0
    }

    if (msg.par1 !== undefined) {
      resolved.par1 = msg.par1;
    }
    else {
      resolved.par1 = 0.0
    }

    if (msg.par2 !== undefined) {
      resolved.par2 = msg.par2;
    }
    else {
      resolved.par2 = 0.0
    }

    if (msg.par3 !== undefined) {
      resolved.par3 = msg.par3;
    }
    else {
      resolved.par3 = 0.0
    }

    return resolved;
    }
};

module.exports = realVal;
