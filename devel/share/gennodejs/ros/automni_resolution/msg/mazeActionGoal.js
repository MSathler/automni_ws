// Auto-generated. Do not edit!

// (in-package automni_resolution.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class mazeActionGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.technique = null;
    }
    else {
      if (initObj.hasOwnProperty('technique')) {
        this.technique = initObj.technique
      }
      else {
        this.technique = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mazeActionGoal
    // Serialize message field [technique]
    bufferOffset = _serializer.string(obj.technique, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mazeActionGoal
    let len;
    let data = new mazeActionGoal(null);
    // Deserialize message field [technique]
    data.technique = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.technique);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'automni_resolution/mazeActionGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e499e08e440a0530c071297a67eb6e79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    string technique
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mazeActionGoal(null);
    if (msg.technique !== undefined) {
      resolved.technique = msg.technique;
    }
    else {
      resolved.technique = ''
    }

    return resolved;
    }
};

module.exports = mazeActionGoal;