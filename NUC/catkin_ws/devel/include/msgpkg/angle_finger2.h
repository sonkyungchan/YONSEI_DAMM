// Generated by gencpp from file msgpkg/angle_finger2.msg
// DO NOT EDIT!


#ifndef MSGPKG_MESSAGE_ANGLE_FINGER2_H
#define MSGPKG_MESSAGE_ANGLE_FINGER2_H


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
struct angle_finger2_
{
  typedef angle_finger2_<ContainerAllocator> Type;

  angle_finger2_()
    : Data1(0.0)
    , Data2(0.0)  {
    }
  angle_finger2_(const ContainerAllocator& _alloc)
    : Data1(0.0)
    , Data2(0.0)  {
  (void)_alloc;
    }



   typedef float _Data1_type;
  _Data1_type Data1;

   typedef float _Data2_type;
  _Data2_type Data2;





  typedef boost::shared_ptr< ::msgpkg::angle_finger2_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgpkg::angle_finger2_<ContainerAllocator> const> ConstPtr;

}; // struct angle_finger2_

typedef ::msgpkg::angle_finger2_<std::allocator<void> > angle_finger2;

typedef boost::shared_ptr< ::msgpkg::angle_finger2 > angle_finger2Ptr;
typedef boost::shared_ptr< ::msgpkg::angle_finger2 const> angle_finger2ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgpkg::angle_finger2_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgpkg::angle_finger2_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msgpkg::angle_finger2_<ContainerAllocator1> & lhs, const ::msgpkg::angle_finger2_<ContainerAllocator2> & rhs)
{
  return lhs.Data1 == rhs.Data1 &&
    lhs.Data2 == rhs.Data2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msgpkg::angle_finger2_<ContainerAllocator1> & lhs, const ::msgpkg::angle_finger2_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msgpkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msgpkg::angle_finger2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgpkg::angle_finger2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgpkg::angle_finger2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgpkg::angle_finger2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgpkg::angle_finger2_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgpkg::angle_finger2_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgpkg::angle_finger2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "367b263b399638238803cd74c6366c91";
  }

  static const char* value(const ::msgpkg::angle_finger2_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x367b263b39963823ULL;
  static const uint64_t static_value2 = 0x8803cd74c6366c91ULL;
};

template<class ContainerAllocator>
struct DataType< ::msgpkg::angle_finger2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgpkg/angle_finger2";
  }

  static const char* value(const ::msgpkg::angle_finger2_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgpkg::angle_finger2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 Data1\n"
"float32 Data2\n"
;
  }

  static const char* value(const ::msgpkg::angle_finger2_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgpkg::angle_finger2_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Data1);
      stream.next(m.Data2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct angle_finger2_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgpkg::angle_finger2_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgpkg::angle_finger2_<ContainerAllocator>& v)
  {
    s << indent << "Data1: ";
    Printer<float>::stream(s, indent + "  ", v.Data1);
    s << indent << "Data2: ";
    Printer<float>::stream(s, indent + "  ", v.Data2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGPKG_MESSAGE_ANGLE_FINGER2_H