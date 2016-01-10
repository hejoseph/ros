// Generated by gencpp from file rosapi/HasParam.msg
// DO NOT EDIT!


#ifndef ROSAPI_MESSAGE_HASPARAM_H
#define ROSAPI_MESSAGE_HASPARAM_H

#include <ros/service_traits.h>


#include <rosapi/HasParamRequest.h>
#include <rosapi/HasParamResponse.h>


namespace rosapi
{

struct HasParam
{

typedef HasParamRequest Request;
typedef HasParamResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct HasParam
} // namespace rosapi


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rosapi::HasParam > {
  static const char* value()
  {
    return "ed3df286bd6dff9b961770f577454ea9";
  }

  static const char* value(const ::rosapi::HasParam&) { return value(); }
};

template<>
struct DataType< ::rosapi::HasParam > {
  static const char* value()
  {
    return "rosapi/HasParam";
  }

  static const char* value(const ::rosapi::HasParam&) { return value(); }
};


// service_traits::MD5Sum< ::rosapi::HasParamRequest> should match 
// service_traits::MD5Sum< ::rosapi::HasParam > 
template<>
struct MD5Sum< ::rosapi::HasParamRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rosapi::HasParam >::value();
  }
  static const char* value(const ::rosapi::HasParamRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rosapi::HasParamRequest> should match 
// service_traits::DataType< ::rosapi::HasParam > 
template<>
struct DataType< ::rosapi::HasParamRequest>
{
  static const char* value()
  {
    return DataType< ::rosapi::HasParam >::value();
  }
  static const char* value(const ::rosapi::HasParamRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rosapi::HasParamResponse> should match 
// service_traits::MD5Sum< ::rosapi::HasParam > 
template<>
struct MD5Sum< ::rosapi::HasParamResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rosapi::HasParam >::value();
  }
  static const char* value(const ::rosapi::HasParamResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rosapi::HasParamResponse> should match 
// service_traits::DataType< ::rosapi::HasParam > 
template<>
struct DataType< ::rosapi::HasParamResponse>
{
  static const char* value()
  {
    return DataType< ::rosapi::HasParam >::value();
  }
  static const char* value(const ::rosapi::HasParamResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROSAPI_MESSAGE_HASPARAM_H