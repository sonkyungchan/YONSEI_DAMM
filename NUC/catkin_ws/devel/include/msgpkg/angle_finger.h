// Generated by gencpp from file msgpkg/angle_finger.msg
// DO NOT EDIT!


#ifndef MSGPKG_MESSAGE_ANGLE_FINGER_H
#define MSGPKG_MESSAGE_ANGLE_FINGER_H


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
struct angle_finger_
{
  typedef angle_finger_<ContainerAllocator> Type;

  angle_finger_()
    : Data(0.0)  {
    }
  angle_finger_(const ContainerAllocator& _alloc)
    : Data(0.0)  {
  (void)_alloc;
    }



   typedef float _Data_type;
  _Data_type Data;





  typedef boost::shared_ptr< ::msgpkg::angle_finger_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgpkg::angle_finger_<ContainerAllocator> const> ConstPtr;

}; // struct angle_finger_

typedef ::msgpkg::angle_finger_<std::allocator<void> > angle_finger;

typedef boost::shared_ptr< ::msgpkg::angle_finger > angle_fingerPtr;
typedef boost::shared_ptr< ::msgpkg::angle_finger const> angle_fingerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgpkg::angle_finger_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgpkg::angle_finger_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msgpkg::angle_finger_<ContainerAllocator1> & lhs, const ::msgpkg::angle_finger_<ContainerAllocator2> & rhs)
{
  return lhs.Data == rhs.Data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msgpkg::angle_finger_<ContainerAllocator1> & lhs, const ::msgpkg::angle_finger_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msgpkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msgpkg::angle_finger_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgpkg::angle_finger_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgpkg::angle_finger_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgpkg::angle_finger_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgpkg::angle_finger_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgpkg::angle_finger_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgpkg::angle_finger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cdf0857c334d04631fd6716a8c4c2496";
  }

  static const char* value(const ::msgpkg::angle_finger_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcdf0857c334d0463ULL;
  static const uint64_t static_value2 = 0x1fd6716a8c4c2496ULL;
};

template<class ContainerAllocator>
struct DataType< ::msgpkg::angle_finger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgpkg/angle_finger";
  }

  static const char* value(const ::msgpkg::angle_finger_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgpkg::angle_finger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 Data\n"
;
  }

  static const char* value(const ::msgpkg::angle_finger_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgpkg::angle_finger_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct angle_finger_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgpkg::angle_finger_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgpkg::angle_finger_<ContainerAllocator>& v)
  {
    s << indent << "Data: ";
    Printer<float>::stream(s, indent + "  ", v.Data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGPKG_MESSAGE_ANGLE_FINGER_H