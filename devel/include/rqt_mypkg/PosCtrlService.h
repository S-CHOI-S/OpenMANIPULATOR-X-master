// Generated by gencpp from file rqt_mypkg/PosCtrlService.msg
// DO NOT EDIT!


#ifndef RQT_MYPKG_MESSAGE_POSCTRLSERVICE_H
#define RQT_MYPKG_MESSAGE_POSCTRLSERVICE_H

#include <ros/service_traits.h>


#include <rqt_mypkg/PosCtrlServiceRequest.h>
#include <rqt_mypkg/PosCtrlServiceResponse.h>


namespace rqt_mypkg
{

struct PosCtrlService
{

typedef PosCtrlServiceRequest Request;
typedef PosCtrlServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PosCtrlService
} // namespace rqt_mypkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rqt_mypkg::PosCtrlService > {
  static const char* value()
  {
    return "80a636fc1acfa66a2cafa05380613d88";
  }

  static const char* value(const ::rqt_mypkg::PosCtrlService&) { return value(); }
};

template<>
struct DataType< ::rqt_mypkg::PosCtrlService > {
  static const char* value()
  {
    return "rqt_mypkg/PosCtrlService";
  }

  static const char* value(const ::rqt_mypkg::PosCtrlService&) { return value(); }
};


// service_traits::MD5Sum< ::rqt_mypkg::PosCtrlServiceRequest> should match
// service_traits::MD5Sum< ::rqt_mypkg::PosCtrlService >
template<>
struct MD5Sum< ::rqt_mypkg::PosCtrlServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rqt_mypkg::PosCtrlService >::value();
  }
  static const char* value(const ::rqt_mypkg::PosCtrlServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rqt_mypkg::PosCtrlServiceRequest> should match
// service_traits::DataType< ::rqt_mypkg::PosCtrlService >
template<>
struct DataType< ::rqt_mypkg::PosCtrlServiceRequest>
{
  static const char* value()
  {
    return DataType< ::rqt_mypkg::PosCtrlService >::value();
  }
  static const char* value(const ::rqt_mypkg::PosCtrlServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rqt_mypkg::PosCtrlServiceResponse> should match
// service_traits::MD5Sum< ::rqt_mypkg::PosCtrlService >
template<>
struct MD5Sum< ::rqt_mypkg::PosCtrlServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rqt_mypkg::PosCtrlService >::value();
  }
  static const char* value(const ::rqt_mypkg::PosCtrlServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rqt_mypkg::PosCtrlServiceResponse> should match
// service_traits::DataType< ::rqt_mypkg::PosCtrlService >
template<>
struct DataType< ::rqt_mypkg::PosCtrlServiceResponse>
{
  static const char* value()
  {
    return DataType< ::rqt_mypkg::PosCtrlService >::value();
  }
  static const char* value(const ::rqt_mypkg::PosCtrlServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RQT_MYPKG_MESSAGE_POSCTRLSERVICE_H
