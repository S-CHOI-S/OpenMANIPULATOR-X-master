// Generated by gencpp from file open_manipulator_msgs/DockBatteryServiceRequest.msg
// DO NOT EDIT!


#ifndef OPEN_MANIPULATOR_MSGS_MESSAGE_DOCKBATTERYSERVICEREQUEST_H
#define OPEN_MANIPULATOR_MSGS_MESSAGE_DOCKBATTERYSERVICEREQUEST_H


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
struct DockBatteryServiceRequest_
{
  typedef DockBatteryServiceRequest_<ContainerAllocator> Type;

  DockBatteryServiceRequest_()
    : Dock_Do(false)  {
    }
  DockBatteryServiceRequest_(const ContainerAllocator& _alloc)
    : Dock_Do(false)  {
  (void)_alloc;
    }



   typedef uint8_t _Dock_Do_type;
  _Dock_Do_type Dock_Do;





  typedef boost::shared_ptr< ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DockBatteryServiceRequest_

typedef ::open_manipulator_msgs::DockBatteryServiceRequest_<std::allocator<void> > DockBatteryServiceRequest;

typedef boost::shared_ptr< ::open_manipulator_msgs::DockBatteryServiceRequest > DockBatteryServiceRequestPtr;
typedef boost::shared_ptr< ::open_manipulator_msgs::DockBatteryServiceRequest const> DockBatteryServiceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator1> & lhs, const ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.Dock_Do == rhs.Dock_Do;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator1> & lhs, const ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace open_manipulator_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "176118c4f805289b178b248bb86fc0ac";
  }

  static const char* value(const ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x176118c4f805289bULL;
  static const uint64_t static_value2 = 0x178b248bb86fc0acULL;
};

template<class ContainerAllocator>
struct DataType< ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "open_manipulator_msgs/DockBatteryServiceRequest";
  }

  static const char* value(const ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool Dock_Do\n"
;
  }

  static const char* value(const ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Dock_Do);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DockBatteryServiceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::open_manipulator_msgs::DockBatteryServiceRequest_<ContainerAllocator>& v)
  {
    s << indent << "Dock_Do: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Dock_Do);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPEN_MANIPULATOR_MSGS_MESSAGE_DOCKBATTERYSERVICEREQUEST_H
