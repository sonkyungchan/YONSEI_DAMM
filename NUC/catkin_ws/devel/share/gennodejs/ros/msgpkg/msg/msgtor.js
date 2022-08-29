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

class msgtor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tor = null;
    }
    else {
      if (initObj.hasOwnProperty('tor')) {
        this.tor = initObj.tor
      }
      else {
        this.tor = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msgtor
    // Serialize message field [tor]
    bufferOffset = _serializer.float32(obj.tor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msgtor
    let len;
    let data = new msgtor(null);
    // Deserialize message field [tor]
    data.tor = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgpkg/msgtor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '087bb50d3e0b88ee3559c736b6ddf16b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 tor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msgtor(null);
    if (msg.tor !== undefined) {
      resolved.tor = msg.tor;
    }
    else {
      resolved.tor = 0.0
    }

    return resolved;
    }
};

module.exports = msgtor;
