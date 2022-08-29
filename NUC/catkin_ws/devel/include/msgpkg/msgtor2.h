// Generated by gencpp from file msgpkg/msgtor2.msg
// DO NOT EDIT!


#ifndef MSGPKG_MESSAGE_MSGTOR2_H
#define MSGPKG_MESSAGE_MSGTOR2_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace msgpkg
{
template <class ContainerAllocator>
struct msgtor2_
{
  typedef msgtor2_<ContainerAllocator> Type;

  msgtor2_()
    : tor1(0.0)
    , tor2(0.0)  {
    }
  msgtor2_(const ContainerAllocator& _alloc)
    : tor1(0.0)
    , tor2(0.0)  {
  (void)_alloc;
    }



   typedef float _tor1_type;
  _tor1_type tor1;

   typedef float _tor2_type;
  _tor2_type tor2;





  typedef boost::shared_ptr< ::msgpkg::msgtor2_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgpkg::msgtor2_<ContainerAllocator> const> ConstPtr;

}; // struct msgtor2_

typedef ::msgpkg::msgtor2_<std::allocator<void> > msgtor2;

typedef boost::shared_ptr< ::msgpkg::msgtor2 > msgtor2Ptr;
typedef boost::shared_ptr< ::msgpkg::msgtor2 const> msgtor2ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgpkg::msgtor2_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgpkg::msgtor2_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msgpkg::msgtor2_<ContainerAllocator1> & lhs, const ::msgpkg::msgtor2_<ContainerAllocator2> & rhs)
{
  return lhs.tor1 == rhs.tor1 &&
    lhs.tor2 == rhs.tor2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msgpkg::msgtor2_<ContainerAllocator1> & lhs, const ::msgpkg::msgtor2_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msgpkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msgpkg::msgtor2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgpkg::msgtor2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgpkg::msgtor2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgpkg::msgtor2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgpkg::msgtor2_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgpkg::msgtor2_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgpkg::msgtor2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c696c86de69c5c7b67b06aa4153bc27";
  }

  static const char* value(const ::msgpkg::msgtor2_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c696c86de69c5c7ULL;
  static const uint64_t static_value2 = 0xb67b06aa4153bc27ULL;
};

template<class ContainerAllocator>
struct DataType< ::msgpkg::msgtor2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgpkg/msgtor2";
  }

  static const char* value(const ::msgpkg::msgtor2_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgpkg::msgtor2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 tor1\n"
"float32 tor2\n"
;
  }

  static const char* value(const ::msgpkg::msgtor2_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgpkg::msgtor2_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tor1);
      stream.next(m.tor2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msgtor2_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgpkg::msgtor2_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgpkg::msgtor2_<ContainerAllocator>& v)
  {
    s << indent << "tor1: ";
    Printer<float>::stream(s, indent + "  ", v.tor1);
    s << indent << "tor2: ";
    Printer<float>::stream(s, indent + "  ", v.tor2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGPKG_MESSAGE_MSGTOR2_H
