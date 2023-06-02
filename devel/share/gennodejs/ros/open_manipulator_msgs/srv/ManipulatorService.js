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

class ManipulatorServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Manipul = null;
    }
    else {
      if (initObj.hasOwnProperty('Manipul')) {
        this.Manipul = initObj.Manipul
      }
      else {
        this.Manipul = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManipulatorServiceRequest
    // Serialize message field [Manipul]
    bufferOffset = _serializer.bool(obj.Manipul, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManipulatorServiceRequest
    let len;
    let data = new ManipulatorServiceRequest(null);
    // Deserialize message field [Manipul]
    data.Manipul = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/ManipulatorServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e97a16db574d49cc1895dbcce93fb70e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool Manipul
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManipulatorServiceRequest(null);
    if (msg.Manipul !== undefined) {
      resolved.Manipul = msg.Manipul;
    }
    else {
      resolved.Manipul = false
    }

    return resolved;
    }
};

class ManipulatorServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManipulatorServiceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManipulatorServiceResponse
    let len;
    let data = new ManipulatorServiceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/ManipulatorServiceResponse';
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
    const resolved = new ManipulatorServiceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ManipulatorServiceRequest,
  Response: ManipulatorServiceResponse,
  md5sum() { return 'e97a16db574d49cc1895dbcce93fb70e'; },
  datatype() { return 'open_manipulator_msgs/ManipulatorService'; }
};
