// Generated by gencpp from file custom_data/Client.msg
// DO NOT EDIT!


#ifndef CUSTOM_DATA_MESSAGE_CLIENT_H
#define CUSTOM_DATA_MESSAGE_CLIENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace custom_data
{
template <class ContainerAllocator>
struct Client_
{
  typedef Client_<ContainerAllocator> Type;

  Client_()
    : client_name()
    , posx(0.0)
    , posy(0.0)  {
    }
  Client_(const ContainerAllocator& _alloc)
    : client_name(_alloc)
    , posx(0.0)
    , posy(0.0)  {
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _client_name_type;
  _client_name_type client_name;

   typedef double _posx_type;
  _posx_type posx;

   typedef double _posy_type;
  _posy_type posy;




  typedef boost::shared_ptr< ::custom_data::Client_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_data::Client_<ContainerAllocator> const> ConstPtr;

}; // struct Client_

typedef ::custom_data::Client_<std::allocator<void> > Client;

typedef boost::shared_ptr< ::custom_data::Client > ClientPtr;
typedef boost::shared_ptr< ::custom_data::Client const> ClientConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_data::Client_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_data::Client_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace custom_data

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'custom_data': ['/home/joseph/workspace_catkin/src/custom_data/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::custom_data::Client_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_data::Client_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_data::Client_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_data::Client_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_data::Client_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_data::Client_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_data::Client_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c4f6ca1f3347b8c6d52cadc422711428";
  }

  static const char* value(const ::custom_data::Client_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc4f6ca1f3347b8c6ULL;
  static const uint64_t static_value2 = 0xd52cadc422711428ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_data::Client_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_data/Client";
  }

  static const char* value(const ::custom_data::Client_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_data::Client_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string client_name\n\
float64 posx\n\
float64 posy\n\
";
  }

  static const char* value(const ::custom_data::Client_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_data::Client_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.client_name);
      stream.next(m.posx);
      stream.next(m.posy);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct Client_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_data::Client_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_data::Client_<ContainerAllocator>& v)
  {
    s << indent << "client_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.client_name);
    s << indent << "posx: ";
    Printer<double>::stream(s, indent + "  ", v.posx);
    s << indent << "posy: ";
    Printer<double>::stream(s, indent + "  ", v.posy);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_DATA_MESSAGE_CLIENT_H