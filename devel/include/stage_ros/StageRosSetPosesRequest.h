// Generated by gencpp from file stage_ros/StageRosSetPosesRequest.msg
// DO NOT EDIT!


#ifndef STAGE_ROS_MESSAGE_STAGEROSSETPOSESREQUEST_H
#define STAGE_ROS_MESSAGE_STAGEROSSETPOSESREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose2D.h>

namespace stage_ros
{
template <class ContainerAllocator>
struct StageRosSetPosesRequest_
{
  typedef StageRosSetPosesRequest_<ContainerAllocator> Type;

  StageRosSetPosesRequest_()
    : new_poses()  {
    }
  StageRosSetPosesRequest_(const ContainerAllocator& _alloc)
    : new_poses(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::Pose2D_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose2D_<ContainerAllocator> >::other >  _new_poses_type;
  _new_poses_type new_poses;





  typedef boost::shared_ptr< ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> const> ConstPtr;

}; // struct StageRosSetPosesRequest_

typedef ::stage_ros::StageRosSetPosesRequest_<std::allocator<void> > StageRosSetPosesRequest;

typedef boost::shared_ptr< ::stage_ros::StageRosSetPosesRequest > StageRosSetPosesRequestPtr;
typedef boost::shared_ptr< ::stage_ros::StageRosSetPosesRequest const> StageRosSetPosesRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator1> & lhs, const ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator2> & rhs)
{
  return lhs.new_poses == rhs.new_poses;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator1> & lhs, const ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace stage_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1966deb30003e84ae7f53e7c8004eb1";
  }

  static const char* value(const ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1966deb30003e84ULL;
  static const uint64_t static_value2 = 0xae7f53e7c8004eb1ULL;
};

template<class ContainerAllocator>
struct DataType< ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "stage_ros/StageRosSetPosesRequest";
  }

  static const char* value(const ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Pose2D[] new_poses\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
;
  }

  static const char* value(const ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.new_poses);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StageRosSetPosesRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::stage_ros::StageRosSetPosesRequest_<ContainerAllocator>& v)
  {
    s << indent << "new_poses[]" << std::endl;
    for (size_t i = 0; i < v.new_poses.size(); ++i)
    {
      s << indent << "  new_poses[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "    ", v.new_poses[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // STAGE_ROS_MESSAGE_STAGEROSSETPOSESREQUEST_H