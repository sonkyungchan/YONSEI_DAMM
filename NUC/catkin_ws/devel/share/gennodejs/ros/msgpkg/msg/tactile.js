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

class tactile {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Data = null;
    }
    else {
      if (initObj.hasOwnProperty('Data')) {
        this.Data = initObj.Data
      }
      else {
        this.Data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tactile
    // Serialize message field [Data]
    bufferOffset = _arraySerializer.int32(obj.Data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tactile
    let len;
    let data = new tactile(null);
    // Deserialize message field [Data]
    data.Data = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.Data.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgpkg/tactile';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1285f0907f1195d9fc43c8c67aef173e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] Data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new tactile(null);
    if (msg.Data !== undefined) {
      resolved.Data = msg.Data;
    }
    else {
      resolved.Data = []
    }

    return resolved;
    }
};

module.exports = tactile;
