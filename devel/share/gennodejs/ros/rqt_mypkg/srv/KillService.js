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

class KillServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Kill_isChecked = null;
    }
    else {
      if (initObj.hasOwnProperty('Kill_isChecked')) {
        this.Kill_isChecked = initObj.Kill_isChecked
      }
      else {
        this.Kill_isChecked = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KillServiceRequest
    // Serialize message field [Kill_isChecked]
    bufferOffset = _serializer.bool(obj.Kill_isChecked, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KillServiceRequest
    let len;
    let data = new KillServiceRequest(null);
    // Deserialize message field [Kill_isChecked]
    data.Kill_isChecked = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rqt_mypkg/KillServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f50e671bde85037531fb7afb9fea841';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool Kill_isChecked
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KillServiceRequest(null);
    if (msg.Kill_isChecked !== undefined) {
      resolved.Kill_isChecked = msg.Kill_isChecked;
    }
    else {
      resolved.Kill_isChecked = false
    }

    return resolved;
    }
};

class KillServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KillServiceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KillServiceResponse
    let len;
    let data = new KillServiceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rqt_mypkg/KillServiceResponse';
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
    const resolved = new KillServiceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: KillServiceRequest,
  Response: KillServiceResponse,
  md5sum() { return '2f50e671bde85037531fb7afb9fea841'; },
  datatype() { return 'rqt_mypkg/KillService'; }
};
