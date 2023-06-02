// Auto-generated. Do not edit!

// (in-package rqt_mypkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ArmServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Arm_isChecked = null;
    }
    else {
      if (initObj.hasOwnProperty('Arm_isChecked')) {
        this.Arm_isChecked = initObj.Arm_isChecked
      }
      else {
        this.Arm_isChecked = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmServiceRequest
    // Serialize message field [Arm_isChecked]
    bufferOffset = _serializer.bool(obj.Arm_isChecked, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmServiceRequest
    let len;
    let data = new ArmServiceRequest(null);
    // Deserialize message field [Arm_isChecked]
    data.Arm_isChecked = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rqt_mypkg/ArmServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eab1f22ad728081e7b689c37e7f5d0fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool Arm_isChecked
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmServiceRequest(null);
    if (msg.Arm_isChecked !== undefined) {
      resolved.Arm_isChecked = msg.Arm_isChecked;
    }
    else {
      resolved.Arm_isChecked = false
    }

    return resolved;
    }
};

class ArmServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmServiceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmServiceResponse
    let len;
    let data = new ArmServiceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rqt_mypkg/ArmServiceResponse';
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
    const resolved = new ArmServiceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ArmServiceRequest,
  Response: ArmServiceResponse,
  md5sum() { return 'eab1f22ad728081e7b689c37e7f5d0fe'; },
  datatype() { return 'rqt_mypkg/ArmService'; }
};
