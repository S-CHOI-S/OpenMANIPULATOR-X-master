// Generated by gencpp from file rqt_mypkg/ManipulatorServiceResponse.msg
// DO NOT EDIT!


#ifndef RQT_MYPKG_MESSAGE_MANIPULATORSERVICERESPONSE_H
#define RQT_MYPKG_MESSAGE_MANIPULATORSERVICERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rqt_mypkg
{
template <class ContainerAllocator>
struct ManipulatorServiceResponse_
{
  typedef ManipulatorServiceResponse_<ContainerAllocator> Type;

  ManipulatorServiceResponse_()
    {
    }
  ManipulatorServiceResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ManipulatorServiceResponse_

typedef ::rqt_mypkg::ManipulatorServiceResponse_<std::allocator<void> > ManipulatorServiceResponse;

typedef boost::shared_ptr< ::rqt_mypkg::ManipulatorServiceResponse > ManipulatorServiceResponsePtr;
typedef boost::shared_ptr< ::rqt_mypkg::ManipulatorServiceResponse const> ManipulatorServiceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace rqt_mypkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rqt_mypkg/ManipulatorServiceResponse";
  }

  static const char* value(const ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ManipulatorServiceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::rqt_mypkg::ManipulatorServiceResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // RQT_MYPKG_MESSAGE_MANIPULATORSERVICERESPONSE_H
