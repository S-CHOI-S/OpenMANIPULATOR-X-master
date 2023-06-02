// Auto-generated. Do not edit!

// (in-package open_manipulator_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class KillManipulatorServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.KillManipul = null;
    }
    else {
      if (initObj.hasOwnProperty('KillManipul')) {
        this.KillManipul = initObj.KillManipul
      }
      else {
        this.KillManipul = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KillManipulatorServiceRequest
    // Serialize message field [KillManipul]
    bufferOffset = _serializer.bool(obj.KillManipul, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KillManipulatorServiceRequest
    let len;
    let data = new KillManipulatorServiceRequest(null);
    // Deserialize message field [KillManipul]
    data.KillManipul = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/KillManipulatorServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a01135ee4671c8756692e8e401a879e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool KillManipul
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KillManipulatorServiceRequest(null);
    if (msg.KillManipul !== undefined) {
      resolved.KillManipul = msg.KillManipul;
    }
    else {
      resolved.KillManipul = false
    }

    return resolved;
    }
};

class KillManipulatorServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KillManipulatorServiceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KillManipulatorServiceResponse
    let len;
    let data = new KillManipulatorServiceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/KillManipulatorServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KillManipulatorServiceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: KillManipulatorServiceRequest,
  Response: KillManipulatorServiceResponse,
  md5sum() { return '9a01135ee4671c8756692e8e401a879e'; },
  datatype() { return 'open_manipulator_msgs/KillManipulatorService'; }
};
