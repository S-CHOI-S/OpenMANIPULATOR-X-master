// Generated by gencpp from file rqt_mypkg/TiltService.msg
// DO NOT EDIT!


#ifndef RQT_MYPKG_MESSAGE_TILTSERVICE_H
#define RQT_MYPKG_MESSAGE_TILTSERVICE_H

#include <ros/service_traits.h>


#include <rqt_mypkg/TiltServiceRequest.h>
#include <rqt_mypkg/TiltServiceResponse.h>


namespace rqt_mypkg
{

struct TiltService
{

typedef TiltServiceRequest Request;
typedef TiltServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TiltService
} // namespace rqt_mypkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rqt_mypkg::TiltService > {
  static const char* value()
  {
    return "255a80a4a8236b9a7fbfacc2e90e9a25";
  }

  static const char* value(const ::rqt_mypkg::TiltService&) { return value(); }
};

template<>
struct DataType< ::rqt_mypkg::TiltService > {
  static const char* value()
  {
    return "rqt_mypkg/TiltService";
  }

  static const char* value(const ::rqt_mypkg::TiltService&) { return value(); }
};


// service_traits::MD5Sum< ::rqt_mypkg::TiltServiceRequest> should match
// service_traits::MD5Sum< ::rqt_mypkg::TiltService >
template<>
struct MD5Sum< ::rqt_mypkg::TiltServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rqt_mypkg::TiltService >::value();
  }
  static const char* value(const ::rqt_mypkg::TiltServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rqt_mypkg::TiltServiceRequest> should match
// service_traits::DataType< ::rqt_mypkg::TiltService >
template<>
struct DataType< ::rqt_mypkg::TiltServiceRequest>
{
  static const char* value()
  {
    return DataType< ::rqt_mypkg::TiltService >::value();
  }
  static const char* value(const ::rqt_mypkg::TiltServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rqt_mypkg::TiltServiceResponse> should match
// service_traits::MD5Sum< ::rqt_mypkg::TiltService >
template<>
struct MD5Sum< ::rqt_mypkg::TiltServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rqt_mypkg::TiltService >::value();
  }
  static const char* value(const ::rqt_mypkg::TiltServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rqt_mypkg::TiltServiceResponse> should match
// service_traits::DataType< ::rqt_mypkg::TiltService >
template<>
struct DataType< ::rqt_mypkg::TiltServiceResponse>
{
  static const char* value()
  {
    return DataType< ::rqt_mypkg::TiltService >::value();
  }
  static const char* value(const ::rqt_mypkg::TiltServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RQT_MYPKG_MESSAGE_TILTSERVICE_H
