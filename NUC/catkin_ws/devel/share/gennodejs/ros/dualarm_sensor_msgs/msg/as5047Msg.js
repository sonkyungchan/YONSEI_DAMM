// Auto-generated. Do not edit!

// (in-package dualarm_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class as5047Msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mag_enc = null;
    }
    else {
      if (initObj.hasOwnProperty('mag_enc')) {
        this.mag_enc = initObj.mag_enc
      }
      else {
        this.mag_enc = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type as5047Msg
    // Check that the constant length array field [mag_enc] has the right length
    if (obj.mag_enc.length !== 4) {
      throw new Error('Unable to serialize array field mag_enc - length must be 4')
    }
    // Serialize message field [mag_enc]
    bufferOffset = _arraySerializer.int64(obj.mag_enc, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type as5047Msg
    let len;
    let data = new as5047Msg(null);
    // Deserialize message field [mag_enc]
    data.mag_enc = _arrayDeserializer.int64(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dualarm_sensor_msgs/as5047Msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd6c0dbc25f30dc6c77f0282a93fb98a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[4] mag_enc
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new as5047Msg(null);
    if (msg.mag_enc !== undefined) {
      resolved.mag_enc = msg.mag_enc;
    }
    else {
      resolved.mag_enc = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = as5047Msg;
