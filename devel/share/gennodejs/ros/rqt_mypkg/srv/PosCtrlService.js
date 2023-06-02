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

class PosCtrlServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.desired_X = null;
      this.desired_Y = null;
      this.desired_Yaw = null;
      this.desired_Alti = null;
    }
    else {
      if (initObj.hasOwnProperty('desired_X')) {
        this.desired_X = initObj.desired_X
      }
      else {
        this.desired_X = 0.0;
      }
      if (initObj.hasOwnProperty('desired_Y')) {
        this.desired_Y = initObj.desired_Y
      }
      else {
        this.desired_Y = 0.0;
      }
      if (initObj.hasOwnProperty('desired_Yaw')) {
        this.desired_Yaw = initObj.desired_Yaw
      }
      else {
        this.desired_Yaw = 0.0;
      }
      if (initObj.hasOwnProperty('desired_Alti')) {
        this.desired_Alti = initObj.desired_Alti
      }
      else {
        this.desired_Alti = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PosCtrlServiceRequest
    // Serialize message field [desired_X]
    bufferOffset = _serializer.float32(obj.desired_X, buffer, bufferOffset);
    // Serialize message field [desired_Y]
    bufferOffset = _serializer.float32(obj.desired_Y, buffer, bufferOffset);
    // Serialize message field [desired_Yaw]
    bufferOffset = _serializer.float32(obj.desired_Yaw, buffer, bufferOffset);
    // Serialize message field [desired_Alti]
    bufferOffset = _serializer.float32(obj.desired_Alti, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PosCtrlServiceRequest
    let len;
    let data = new PosCtrlServiceRequest(null);
    // Deserialize message field [desired_X]
    data.desired_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [desired_Y]
    data.desired_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [desired_Yaw]
    data.desired_Yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [desired_Alti]
    data.desired_Alti = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rqt_mypkg/PosCtrlServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80a636fc1acfa66a2cafa05380613d88';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 desired_X
    float32 desired_Y
    float32 desired_Yaw
    float32 desired_Alti
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PosCtrlServiceRequest(null);
    if (msg.desired_X !== undefined) {
      resolved.desired_X = msg.desired_X;
    }
    else {
      resolved.desired_X = 0.0
    }

    if (msg.desired_Y !== undefined) {
      resolved.desired_Y = msg.desired_Y;
    }
    else {
      resolved.desired_Y = 0.0
    }

    if (msg.desired_Yaw !== undefined) {
      resolved.desired_Yaw = msg.desired_Yaw;
    }
    else {
      resolved.desired_Yaw = 0.0
    }

    if (msg.desired_Alti !== undefined) {
      resolved.desired_Alti = msg.desired_Alti;
    }
    else {
      resolved.desired_Alti = 0.0
    }

    return resolved;
    }
};

class PosCtrlServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PosCtrlServiceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PosCtrlServiceResponse
    let len;
    let data = new PosCtrlServiceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rqt_mypkg/PosCtrlServiceResponse';
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
    const resolved = new PosCtrlServiceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: PosCtrlServiceRequest,
  Response: PosCtrlServiceResponse,
  md5sum() { return '80a636fc1acfa66a2cafa05380613d88'; },
  datatype() { return 'rqt_mypkg/PosCtrlService'; }
};
