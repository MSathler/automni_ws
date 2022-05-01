// Auto-generated. Do not edit!

// (in-package stage_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class StageRosSetPosesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_poses = null;
    }
    else {
      if (initObj.hasOwnProperty('new_poses')) {
        this.new_poses = initObj.new_poses
      }
      else {
        this.new_poses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StageRosSetPosesRequest
    // Serialize message field [new_poses]
    // Serialize the length for message field [new_poses]
    bufferOffset = _serializer.uint32(obj.new_poses.length, buffer, bufferOffset);
    obj.new_poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StageRosSetPosesRequest
    let len;
    let data = new StageRosSetPosesRequest(null);
    // Deserialize message field [new_poses]
    // Deserialize array length for message field [new_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.new_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.new_poses[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.new_poses.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'stage_ros/StageRosSetPosesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1966deb30003e84ae7f53e7c8004eb1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose2D[] new_poses
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StageRosSetPosesRequest(null);
    if (msg.new_poses !== undefined) {
      resolved.new_poses = new Array(msg.new_poses.length);
      for (let i = 0; i < resolved.new_poses.length; ++i) {
        resolved.new_poses[i] = geometry_msgs.msg.Pose2D.Resolve(msg.new_poses[i]);
      }
    }
    else {
      resolved.new_poses = []
    }

    return resolved;
    }
};

class StageRosSetPosesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response = null;
    }
    else {
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StageRosSetPosesResponse
    // Serialize message field [response]
    bufferOffset = _serializer.bool(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StageRosSetPosesResponse
    let len;
    let data = new StageRosSetPosesResponse(null);
    // Deserialize message field [response]
    data.response = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'stage_ros/StageRosSetPosesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '003b81baa95ab323fc1ddf3c7d0bee81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool response
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StageRosSetPosesResponse(null);
    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = false
    }

    return resolved;
    }
};

module.exports = {
  Request: StageRosSetPosesRequest,
  Response: StageRosSetPosesResponse,
  md5sum() { return '83a7a1cc1bfbdbb746fe908ac18d9848'; },
  datatype() { return 'stage_ros/StageRosSetPoses'; }
};
