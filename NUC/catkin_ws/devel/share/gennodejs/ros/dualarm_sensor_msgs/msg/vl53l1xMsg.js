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

class vl53l1xMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.laser = null;
    }
    else {
      if (initObj.hasOwnProperty('laser')) {
        this.laser = initObj.laser
      }
      else {
        this.laser = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type vl53l1xMsg
    // Check that the constant length array field [laser] has the right length
    if (obj.laser.length !== 3) {
      throw new Error('Unable to serialize array field laser - length must be 3')
    }
    // Serialize message field [laser]
    bufferOffset = _arraySerializer.uint16(obj.laser, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type vl53l1xMsg
    let len;
    let data = new vl53l1xMsg(null);
    // Deserialize message field [laser]
    data.laser = _arrayDeserializer.uint16(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dualarm_sensor_msgs/vl53l1xMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7f412389a37f112bb77ded6f7ffeb01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16[3] laser
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new vl53l1xMsg(null);
    if (msg.laser !== undefined) {
      resolved.laser = msg.laser;
    }
    else {
      resolved.laser = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = vl53l1xMsg;
