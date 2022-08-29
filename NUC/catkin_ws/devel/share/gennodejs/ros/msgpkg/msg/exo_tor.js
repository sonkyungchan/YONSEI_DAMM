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

class exo_tor {
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
        this.Data = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type exo_tor
    // Serialize message field [Data]
    bufferOffset = _serializer.float32(obj.Data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type exo_tor
    let len;
    let data = new exo_tor(null);
    // Deserialize message field [Data]
    data.Data = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgpkg/exo_tor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cdf0857c334d04631fd6716a8c4c2496';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new exo_tor(null);
    if (msg.Data !== undefined) {
      resolved.Data = msg.Data;
    }
    else {
      resolved.Data = 0.0
    }

    return resolved;
    }
};

module.exports = exo_tor;
