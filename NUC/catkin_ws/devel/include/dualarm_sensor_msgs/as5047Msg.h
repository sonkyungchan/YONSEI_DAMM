// Generated by gencpp from file dualarm_sensor_msgs/as5047Msg.msg
// DO NOT EDIT!


#ifndef DUALARM_SENSOR_MSGS_MESSAGE_AS5047MSG_H
#define DUALARM_SENSOR_MSGS_MESSAGE_AS5047MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dualarm_sensor_msgs
{
template <class ContainerAllocator>
struct as5047Msg_
{
  typedef as5047Msg_<ContainerAllocator> Type;

  as5047Msg_()
    : mag_enc()  {
      mag_enc.assign(0);
  }
  as5047Msg_(const ContainerAllocator& _alloc)
    : mag_enc()  {
  (void)_alloc;
      mag_enc.assign(0);
  }



   typedef boost::array<int64_t, 4>  _mag_enc_type;
  _mag_enc_type mag_enc;





  typedef boost::shared_ptr< ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> const> ConstPtr;

}; // struct as5047Msg_

typedef ::dualarm_sensor_msgs::as5047Msg_<std::allocator<void> > as5047Msg;

typedef boost::shared_ptr< ::dualarm_sensor_msgs::as5047Msg > as5047MsgPtr;
typedef boost::shared_ptr< ::dualarm_sensor_msgs::as5047Msg const> as5047MsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator1> & lhs, const ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator2> & rhs)
{
  return lhs.mag_enc == rhs.mag_enc;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator1> & lhs, const ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dualarm_sensor_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dd6c0dbc25f30dc6c77f0282a93fb98a";
  }

  static const char* value(const ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdd6c0dbc25f30dc6ULL;
  static const uint64_t static_value2 = 0xc77f0282a93fb98aULL;
};

template<class ContainerAllocator>
struct DataType< ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dualarm_sensor_msgs/as5047Msg";
  }

  static const char* value(const ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64[4] mag_enc\n"
;
  }

  static const char* value(const ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mag_enc);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct as5047Msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dualarm_sensor_msgs::as5047Msg_<ContainerAllocator>& v)
  {
    s << indent << "mag_enc[]" << std::endl;
    for (size_t i = 0; i < v.mag_enc.size(); ++i)
    {
      s << indent << "  mag_enc[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.mag_enc[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUALARM_SENSOR_MSGS_MESSAGE_AS5047MSG_H
