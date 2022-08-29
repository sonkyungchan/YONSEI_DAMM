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

class gripper_dis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gripper_dis = null;
    }
    else {
      if (initObj.hasOwnProperty('gripper_dis')) {
        this.gripper_dis = initObj.gripper_dis
      }
      else {
        this.gripper_dis = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gripper_dis
    // Serialize message field [gripper_dis]
    bufferOffset = _serializer.float64(obj.gripper_dis, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gripper_dis
    let len;
    let data = new gripper_dis(null);
    // Deserialize message field [gripper_dis]
    data.gripper_dis = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgpkg/gripper_dis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe37c961195d22e6ba99189474288c9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 gripper_dis
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gripper_dis(null);
    if (msg.gripper_dis !== undefined) {
      resolved.gripper_dis = msg.gripper_dis;
    }
    else {
      resolved.gripper_dis = 0.0
    }

    return resolved;
    }
};

module.exports = gripper_dis;
