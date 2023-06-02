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

class DockServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Dock_Do = null;
    }
    else {
      if (initObj.hasOwnProperty('Dock_Do')) {
        this.Dock_Do = initObj.Dock_Do
      }
      else {
        this.Dock_Do = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DockServiceRequest
    // Serialize message field [Dock_Do]
    bufferOffset = _serializer.bool(obj.Dock_Do, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DockServiceRequest
    let len;
    let data = new DockServiceRequest(null);
    // Deserialize message field [Dock_Do]
    data.Dock_Do = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rqt_mypkg/DockServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '176118c4f805289b178b248bb86fc0ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool Dock_Do
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DockServiceRequest(null);
    if (msg.Dock_Do !== undefined) {
      resolved.Dock_Do = msg.Dock_Do;
    }
    else {
      resolved.Dock_Do = false
    }

    return resolved;
    }
};

class DockServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DockServiceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DockServiceResponse
    let len;
    let data = new DockServiceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rqt_mypkg/DockServiceResponse';
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
    const resolved = new DockServiceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: DockServiceRequest,
  Response: DockServiceResponse,
  md5sum() { return '176118c4f805289b178b248bb86fc0ac'; },
  datatype() { return 'rqt_mypkg/DockService'; }
};
