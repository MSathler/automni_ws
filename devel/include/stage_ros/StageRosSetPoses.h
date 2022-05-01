// Generated by gencpp from file stage_ros/StageRosSetPoses.msg
// DO NOT EDIT!


#ifndef STAGE_ROS_MESSAGE_STAGEROSSETPOSES_H
#define STAGE_ROS_MESSAGE_STAGEROSSETPOSES_H

#include <ros/service_traits.h>


#include <stage_ros/StageRosSetPosesRequest.h>
#include <stage_ros/StageRosSetPosesResponse.h>


namespace stage_ros
{

struct StageRosSetPoses
{

typedef StageRosSetPosesRequest Request;
typedef StageRosSetPosesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StageRosSetPoses
} // namespace stage_ros


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::stage_ros::StageRosSetPoses > {
  static const char* value()
  {
    return "83a7a1cc1bfbdbb746fe908ac18d9848";
  }

  static const char* value(const ::stage_ros::StageRosSetPoses&) { return value(); }
};

template<>
struct DataType< ::stage_ros::StageRosSetPoses > {
  static const char* value()
  {
    return "stage_ros/StageRosSetPoses";
  }

  static const char* value(const ::stage_ros::StageRosSetPoses&) { return value(); }
};


// service_traits::MD5Sum< ::stage_ros::StageRosSetPosesRequest> should match
// service_traits::MD5Sum< ::stage_ros::StageRosSetPoses >
template<>
struct MD5Sum< ::stage_ros::StageRosSetPosesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::stage_ros::StageRosSetPoses >::value();
  }
  static const char* value(const ::stage_ros::StageRosSetPosesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::stage_ros::StageRosSetPosesRequest> should match
// service_traits::DataType< ::stage_ros::StageRosSetPoses >
template<>
struct DataType< ::stage_ros::StageRosSetPosesRequest>
{
  static const char* value()
  {
    return DataType< ::stage_ros::StageRosSetPoses >::value();
  }
  static const char* value(const ::stage_ros::StageRosSetPosesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::stage_ros::StageRosSetPosesResponse> should match
// service_traits::MD5Sum< ::stage_ros::StageRosSetPoses >
template<>
struct MD5Sum< ::stage_ros::StageRosSetPosesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::stage_ros::StageRosSetPoses >::value();
  }
  static const char* value(const ::stage_ros::StageRosSetPosesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::stage_ros::StageRosSetPosesResponse> should match
// service_traits::DataType< ::stage_ros::StageRosSetPoses >
template<>
struct DataType< ::stage_ros::StageRosSetPosesResponse>
{
  static const char* value()
  {
    return DataType< ::stage_ros::StageRosSetPoses >::value();
  }
  static const char* value(const ::stage_ros::StageRosSetPosesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // STAGE_ROS_MESSAGE_STAGEROSSETPOSES_H
