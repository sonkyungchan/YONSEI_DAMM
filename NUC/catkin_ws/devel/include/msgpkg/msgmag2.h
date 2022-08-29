// Generated by gencpp from file msgpkg/msgmag2.msg
// DO NOT EDIT!


#ifndef MSGPKG_MESSAGE_MSGMAG2_H
#define MSGPKG_MESSAGE_MSGMAG2_H


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
struct msgmag2_
{
  typedef msgmag2_<ContainerAllocator> Type;

  msgmag2_()
    : mag2(0.0)  {
    }
  msgmag2_(const ContainerAllocator& _alloc)
    : mag2(0.0)  {
  (void)_alloc;
    }



   typedef float _mag2_type;
  _mag2_type mag2;





  typedef boost::shared_ptr< ::msgpkg::msgmag2_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgpkg::msgmag2_<ContainerAllocator> const> ConstPtr;

}; // struct msgmag2_

typedef ::msgpkg::msgmag2_<std::allocator<void> > msgmag2;

typedef boost::shared_ptr< ::msgpkg::msgmag2 > msgmag2Ptr;
typedef boost::shared_ptr< ::msgpkg::msgmag2 const> msgmag2ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgpkg::msgmag2_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgpkg::msgmag2_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msgpkg::msgmag2_<ContainerAllocator1> & lhs, const ::msgpkg::msgmag2_<ContainerAllocator2> & rhs)
{
  return lhs.mag2 == rhs.mag2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msgpkg::msgmag2_<ContainerAllocator1> & lhs, const ::msgpkg::msgmag2_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msgpkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msgpkg::msgmag2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgpkg::msgmag2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgpkg::msgmag2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgpkg::msgmag2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgpkg::msgmag2_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgpkg::msgmag2_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgpkg::msgmag2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0bc0b38d8ef0e3a66f9ed02f56e05589";
  }

  static const char* value(const ::msgpkg::msgmag2_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0bc0b38d8ef0e3a6ULL;
  static const uint64_t static_value2 = 0x6f9ed02f56e05589ULL;
};

template<class ContainerAllocator>
struct DataType< ::msgpkg::msgmag2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgpkg/msgmag2";
  }

  static const char* value(const ::msgpkg::msgmag2_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgpkg::msgmag2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 mag2\n"
;
  }

  static const char* value(const ::msgpkg::msgmag2_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgpkg::msgmag2_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mag2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msgmag2_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgpkg::msgmag2_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgpkg::msgmag2_<ContainerAllocator>& v)
  {
    s << indent << "mag2: ";
    Printer<float>::stream(s, indent + "  ", v.mag2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGPKG_MESSAGE_MSGMAG2_H
