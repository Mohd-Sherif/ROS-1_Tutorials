// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class V2V {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.name = null;
      this.batterry_level = null;
      this.car_pose = null;
      this.car_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('batterry_level')) {
        this.batterry_level = initObj.batterry_level
      }
      else {
        this.batterry_level = 0.0;
      }
      if (initObj.hasOwnProperty('car_pose')) {
        this.car_pose = initObj.car_pose
      }
      else {
        this.car_pose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('car_speed')) {
        this.car_speed = initObj.car_speed
      }
      else {
        this.car_speed = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2V
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [batterry_level]
    bufferOffset = _serializer.float32(obj.batterry_level, buffer, bufferOffset);
    // Serialize message field [car_pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.car_pose, buffer, bufferOffset);
    // Serialize message field [car_speed]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.car_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2V
    let len;
    let data = new V2V(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [batterry_level]
    data.batterry_level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [car_pose]
    data.car_pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [car_speed]
    data.car_speed = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/V2V';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5dadcc72213a11a9b9e3ffee3fcf962b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    string name
    float32 batterry_level
    geometry_msgs/Pose2D car_pose
    geometry_msgs/Twist car_speed
    
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
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new V2V(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.batterry_level !== undefined) {
      resolved.batterry_level = msg.batterry_level;
    }
    else {
      resolved.batterry_level = 0.0
    }

    if (msg.car_pose !== undefined) {
      resolved.car_pose = geometry_msgs.msg.Pose2D.Resolve(msg.car_pose)
    }
    else {
      resolved.car_pose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.car_speed !== undefined) {
      resolved.car_speed = geometry_msgs.msg.Twist.Resolve(msg.car_speed)
    }
    else {
      resolved.car_speed = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = V2V;
