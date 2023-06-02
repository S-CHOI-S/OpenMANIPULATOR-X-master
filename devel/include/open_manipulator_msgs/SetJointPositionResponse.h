// Generated by gencpp from file open_manipulator_msgs/SetJointPositionResponse.msg
// DO NOT EDIT!


#ifndef OPEN_MANIPULATOR_MSGS_MESSAGE_SETJOINTPOSITIONRESPONSE_H
#define OPEN_MANIPULATOR_MSGS_MESSAGE_SETJOINTPOSITIONRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace open_manipulator_msgs
{
template <class ContainerAllocator>
struct SetJointPositionResponse_
{
  typedef SetJointPositionResponse_<ContainerAllocator> Type;

  SetJointPositionResponse_()
    : is_planned(false)  {
    }
  SetJointPositionResponse_(const ContainerAllocator& _alloc)
    : is_planned(false)  {
  (void)_alloc;
    }



   typedef uint8_t _is_planned_type;
  _is_planned_type is_planned;





  typedef boost::shared_ptr< ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetJointPositionResponse_

typedef ::open_manipulator_msgs::SetJointPositionResponse_<std::allocator<void> > SetJointPositionResponse;

typedef boost::shared_ptr< ::open_manipulator_msgs::SetJointPositionResponse > SetJointPositionResponsePtr;
typedef boost::shared_ptr< ::open_manipulator_msgs::SetJointPositionResponse const> SetJointPositionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator1> & lhs, const ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.is_planned == rhs.is_planned;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator1> & lhs, const ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace open_manipulator_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2638cc2443b1469b0e9e152083d7128d";
  }

  static const char* value(const ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2638cc2443b1469bULL;
  static const uint64_t static_value2 = 0x0e9e152083d7128dULL;
};

template<class ContainerAllocator>
struct DataType< ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "open_manipulator_msgs/SetJointPositionResponse";
  }

  static const char* value(const ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool is_planned\n"
"\n"
;
  }

  static const char* value(const ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.is_planned);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetJointPositionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::open_manipulator_msgs::SetJointPositionResponse_<ContainerAllocator>& v)
  {
    s << indent << "is_planned: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_planned);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPEN_MANIPULATOR_MSGS_MESSAGE_SETJOINTPOSITIONRESPONSE_H
