// Auto-generated. Do not edit!

// (in-package vehicle_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class motorsMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.omega1 = null;
      this.omega2 = null;
      this.omega3 = null;
      this.omega4 = null;
    }
    else {
      if (initObj.hasOwnProperty('omega1')) {
        this.omega1 = initObj.omega1
      }
      else {
        this.omega1 = 0;
      }
      if (initObj.hasOwnProperty('omega2')) {
        this.omega2 = initObj.omega2
      }
      else {
        this.omega2 = 0;
      }
      if (initObj.hasOwnProperty('omega3')) {
        this.omega3 = initObj.omega3
      }
      else {
        this.omega3 = 0;
      }
      if (initObj.hasOwnProperty('omega4')) {
        this.omega4 = initObj.omega4
      }
      else {
        this.omega4 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motorsMsg
    // Serialize message field [omega1]
    bufferOffset = _serializer.int32(obj.omega1, buffer, bufferOffset);
    // Serialize message field [omega2]
    bufferOffset = _serializer.int32(obj.omega2, buffer, bufferOffset);
    // Serialize message field [omega3]
    bufferOffset = _serializer.int32(obj.omega3, buffer, bufferOffset);
    // Serialize message field [omega4]
    bufferOffset = _serializer.int32(obj.omega4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motorsMsg
    let len;
    let data = new motorsMsg(null);
    // Deserialize message field [omega1]
    data.omega1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [omega2]
    data.omega2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [omega3]
    data.omega3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [omega4]
    data.omega4 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vehicle_control/motorsMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6310bddbb1f6c6ea47b30f0419b43b5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 omega1
    int32 omega2
    int32 omega3
    int32 omega4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motorsMsg(null);
    if (msg.omega1 !== undefined) {
      resolved.omega1 = msg.omega1;
    }
    else {
      resolved.omega1 = 0
    }

    if (msg.omega2 !== undefined) {
      resolved.omega2 = msg.omega2;
    }
    else {
      resolved.omega2 = 0
    }

    if (msg.omega3 !== undefined) {
      resolved.omega3 = msg.omega3;
    }
    else {
      resolved.omega3 = 0
    }

    if (msg.omega4 !== undefined) {
      resolved.omega4 = msg.omega4;
    }
    else {
      resolved.omega4 = 0
    }

    return resolved;
    }
};

module.exports = motorsMsg;
