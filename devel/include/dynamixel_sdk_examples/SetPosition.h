// Generated by gencpp from file dynamixel_sdk_examples/SetPosition.msg
// DO NOT EDIT!


#ifndef DYNAMIXEL_SDK_EXAMPLES_MESSAGE_SETPOSITION_H
#define DYNAMIXEL_SDK_EXAMPLES_MESSAGE_SETPOSITION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dynamixel_sdk_examples
{
template <class ContainerAllocator>
struct SetPosition_
{
  typedef SetPosition_<ContainerAllocator> Type;

  SetPosition_()
    : id(0)
    , position(0)  {
    }
  SetPosition_(const ContainerAllocator& _alloc)
    : id(0)
    , position(0)  {
  (void)_alloc;
    }



   typedef uint8_t _id_type;
  _id_type id;

   typedef int32_t _position_type;
  _position_type position;





  typedef boost::shared_ptr< ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> const> ConstPtr;

}; // struct SetPosition_

typedef ::dynamixel_sdk_examples::SetPosition_<std::allocator<void> > SetPosition;

typedef boost::shared_ptr< ::dynamixel_sdk_examples::SetPosition > SetPositionPtr;
typedef boost::shared_ptr< ::dynamixel_sdk_examples::SetPosition const> SetPositionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator1> & lhs, const ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.position == rhs.position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator1> & lhs, const ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dynamixel_sdk_examples

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0a775458729eb3272bc88b4f5f764cc8";
  }

  static const char* value(const ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0a775458729eb327ULL;
  static const uint64_t static_value2 = 0x2bc88b4f5f764cc8ULL;
};

template<class ContainerAllocator>
struct DataType< ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dynamixel_sdk_examples/SetPosition";
  }

  static const char* value(const ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 id\n"
"int32 position\n"
;
  }

  static const char* value(const ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetPosition_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dynamixel_sdk_examples::SetPosition_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
    s << indent << "position: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DYNAMIXEL_SDK_EXAMPLES_MESSAGE_SETPOSITION_H
