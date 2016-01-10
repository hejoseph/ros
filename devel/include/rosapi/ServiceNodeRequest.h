// Generated by gencpp from file rosapi/ServiceNodeRequest.msg
// DO NOT EDIT!


#ifndef ROSAPI_MESSAGE_SERVICENODEREQUEST_H
#define ROSAPI_MESSAGE_SERVICENODEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosapi
{
template <class ContainerAllocator>
struct ServiceNodeRequest_
{
  typedef ServiceNodeRequest_<ContainerAllocator> Type;

  ServiceNodeRequest_()
    : service()  {
    }
  ServiceNodeRequest_(const ContainerAllocator& _alloc)
    : service(_alloc)  {
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _service_type;
  _service_type service;




  typedef boost::shared_ptr< ::rosapi::ServiceNodeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosapi::ServiceNodeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ServiceNodeRequest_

typedef ::rosapi::ServiceNodeRequest_<std::allocator<void> > ServiceNodeRequest;

typedef boost::shared_ptr< ::rosapi::ServiceNodeRequest > ServiceNodeRequestPtr;
typedef boost::shared_ptr< ::rosapi::ServiceNodeRequest const> ServiceNodeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosapi::ServiceNodeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosapi::ServiceNodeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosapi

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'rosapi': ['/home/joseph/workspace_catkin/src/rosbridge_suite/rosapi/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rosapi::ServiceNodeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosapi::ServiceNodeRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosapi::ServiceNodeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosapi::ServiceNodeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosapi::ServiceNodeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosapi::ServiceNodeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosapi::ServiceNodeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1cbcfa13b08f6d36710b9af8741e6112";
  }

  static const char* value(const ::rosapi::ServiceNodeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1cbcfa13b08f6d36ULL;
  static const uint64_t static_value2 = 0x710b9af8741e6112ULL;
};

template<class ContainerAllocator>
struct DataType< ::rosapi::ServiceNodeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosapi/ServiceNodeRequest";
  }

  static const char* value(const ::rosapi::ServiceNodeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosapi::ServiceNodeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string service\n\
";
  }

  static const char* value(const ::rosapi::ServiceNodeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosapi::ServiceNodeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.service);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct ServiceNodeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosapi::ServiceNodeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosapi::ServiceNodeRequest_<ContainerAllocator>& v)
  {
    s << indent << "service: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.service);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSAPI_MESSAGE_SERVICENODEREQUEST_H
