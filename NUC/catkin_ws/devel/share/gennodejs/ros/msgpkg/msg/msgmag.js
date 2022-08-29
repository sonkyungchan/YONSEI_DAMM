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

class msgmag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mag = null;
    }
    else {
      if (initObj.hasOwnProperty('mag')) {
        this.mag = initObj.mag
      }
      else {
        this.mag = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msgmag
    // Serialize message field [mag]
    bufferOffset = _serializer.float32(obj.mag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msgmag
    let len;
    let data = new msgmag(null);
    // Deserialize message field [mag]
    data.mag = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgpkg/msgmag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '938244a09b40aebc4fca0d898d8e25f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 mag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msgmag(null);
    if (msg.mag !== undefined) {
      resolved.mag = msg.mag;
    }
    else {
      resolved.mag = 0.0
    }

    return resolved;
    }
};

module.exports = msgmag;
