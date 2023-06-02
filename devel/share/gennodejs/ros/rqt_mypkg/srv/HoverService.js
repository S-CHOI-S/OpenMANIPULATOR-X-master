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

class HoverServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isHover = null;
      this.isHovering = null;
      this.isLanding = null;
    }
    else {
      if (initObj.hasOwnProperty('isHover')) {
        this.isHover = initObj.isHover
      }
      else {
        this.isHover = false;
      }
      if (initObj.hasOwnProperty('isHovering')) {
        this.isHovering = initObj.isHovering
      }
      else {
        this.isHovering = false;
      }
      if (initObj.hasOwnProperty('isLanding')) {
        this.isLanding = initObj.isLanding
      }
      else {
        this.isLanding = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HoverServiceRequest
    // Serialize message field [isHover]
    bufferOffset = _serializer.bool(obj.isHover, buffer, bufferOffset);
    // Serialize message field [isHovering]
    bufferOffset = _serializer.bool(obj.isHovering, buffer, bufferOffset);
    // Serialize message field [isLanding]
    bufferOffset = _serializer.bool(obj.isLanding, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HoverServiceRequest
    let len;
    let data = new HoverServiceRequest(null);
    // Deserialize message field [isHover]
    data.isHover = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isHovering]
    data.isHovering = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isLanding]
    data.isLanding = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rqt_mypkg/HoverServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8930d5ae44ec72110e415a4dfe50939b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isHover
    bool isHovering
    bool isLanding
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HoverServiceRequest(null);
    if (msg.isHover !== undefined) {
      resolved.isHover = msg.isHover;
    }
    else {
      resolved.isHover = false
    }

    if (msg.isHovering !== undefined) {
      resolved.isHovering = msg.isHovering;
    }
    else {
      resolved.isHovering = false
    }

    if (msg.isLanding !== undefined) {
      resolved.isLanding = msg.isLanding;
    }
    else {
      resolved.isLanding = false
    }

    return resolved;
    }
};

class HoverServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HoverServiceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HoverServiceResponse
    let len;
    let data = new HoverServiceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rqt_mypkg/HoverServiceResponse';
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
    const resolved = new HoverServiceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: HoverServiceRequest,
  Response: HoverServiceResponse,
  md5sum() { return '8930d5ae44ec72110e415a4dfe50939b'; },
  datatype() { return 'rqt_mypkg/HoverService'; }
};
