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

class DockBatteryServiceRequest {
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
    // Serializes a message object of type DockBatteryServiceRequest
    // Serialize message field [Dock_Do]
    bufferOffset = _serializer.bool(obj.Dock_Do, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DockBatteryServiceRequest
    let len;
    let data = new DockBatteryServiceRequest(null);
    // Deserialize message field [Dock_Do]
    data.Dock_Do = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/DockBatteryServiceRequest';
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
    const resolved = new DockBatteryServiceRequest(null);
    if (msg.Dock_Do !== undefined) {
      resolved.Dock_Do = msg.Dock_Do;
    }
    else {
      resolved.Dock_Do = false
    }

    return resolved;
    }
};

class DockBatteryServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DockBatteryServiceResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DockBatteryServiceResponse
    let len;
    let data = new DockBatteryServiceResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'open_manipulator_msgs/DockBatteryServiceResponse';
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
    const resolved = new DockBatteryServiceResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: DockBatteryServiceRequest,
  Response: DockBatteryServiceResponse,
  md5sum() { return '176118c4f805289b178b248bb86fc0ac'; },
  datatype() { return 'open_manipulator_msgs/DockBatteryService'; }
};
