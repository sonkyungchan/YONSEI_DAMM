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

class fabric {
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
        this.Data1 = 0;
      }
      if (initObj.hasOwnProperty('Data2')) {
        this.Data2 = initObj.Data2
      }
      else {
        this.Data2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type fabric
    // Serialize message field [Data1]
    bufferOffset = _serializer.int32(obj.Data1, buffer, bufferOffset);
    // Serialize message field [Data2]
    bufferOffset = _serializer.int32(obj.Data2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type fabric
    let len;
    let data = new fabric(null);
    // Deserialize message field [Data1]
    data.Data1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Data2]
    data.Data2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgpkg/fabric';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b586c67171812310749927e0856b34be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 Data1
    int32 Data2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new fabric(null);
    if (msg.Data1 !== undefined) {
      resolved.Data1 = msg.Data1;
    }
    else {
      resolved.Data1 = 0
    }

    if (msg.Data2 !== undefined) {
      resolved.Data2 = msg.Data2;
    }
    else {
      resolved.Data2 = 0
    }

    return resolved;
    }
};

module.exports = fabric;
