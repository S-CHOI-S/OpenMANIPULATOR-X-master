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

class TiltServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Tilt_isChecked = null;
    }
    else {
      if (initObj.hasOwnProperty('Tilt_isChecked')) {
        this.Tilt_isChecked = initObj.Tilt_isChecked
      }
      else {
        this.Tilt_isChecked = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TiltServiceRequest
    // Serialize message field [Tilt_isChecked]
    bufferOffset = _serializer.bool(obj.Tilt_isChecked, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TiltServiceRequest
    let len;
    let data = new TiltServiceRequest(null);
    // Deserialize message field [Tilt_isChecked]
    data.Tilt_isChecked = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rqt_mypkg/TiltServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '255a80a4a8236b9a7fbfacc2e90e9a25';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool Tilt_isChecked
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TiltServiceRequest(null);
    if (msg.Tilt_isChecked !== undefined) {
      resolved.Tilt_isChecked = msg.Tilt_isChecked;
    }
    else {
      resolved.Tilt_isChecked = false
    }

    return resolved;
    }
};

class TiltServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TiltServiceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TiltServiceResponse
    let len;
    let data = new TiltServiceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rqt_mypkg/TiltServiceResponse';
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
    const resolved = new TiltServiceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: TiltServiceRequest,
  Response: TiltServiceResponse,
  md5sum() { return '255a80a4a8236b9a7fbfacc2e90e9a25'; },
  datatype() { return 'rqt_mypkg/TiltService'; }
};
