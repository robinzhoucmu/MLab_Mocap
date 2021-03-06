/* Auto-generated by genmsg_cpp for file /home/jiaji/TestNatNet/Mocap/srv/mocap_SetMocapTransformation.srv */
#ifndef MOCAP_SERVICE_MOCAP_SETMOCAPTRANSFORMATION_H
#define MOCAP_SERVICE_MOCAP_SETMOCAPTRANSFORMATION_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "ros/service_traits.h"




namespace Mocap
{
template <class ContainerAllocator>
struct mocap_SetMocapTransformationRequest_ {
  typedef mocap_SetMocapTransformationRequest_<ContainerAllocator> Type;

  mocap_SetMocapTransformationRequest_()
  : x(0.0)
  , y(0.0)
  , z(0.0)
  , q0(0.0)
  , qx(0.0)
  , qy(0.0)
  , qz(0.0)
  {
  }

  mocap_SetMocapTransformationRequest_(const ContainerAllocator& _alloc)
  : x(0.0)
  , y(0.0)
  , z(0.0)
  , q0(0.0)
  , qx(0.0)
  , qy(0.0)
  , qz(0.0)
  {
  }

  typedef double _x_type;
  double x;

  typedef double _y_type;
  double y;

  typedef double _z_type;
  double z;

  typedef double _q0_type;
  double q0;

  typedef double _qx_type;
  double qx;

  typedef double _qy_type;
  double qy;

  typedef double _qz_type;
  double qz;


  typedef boost::shared_ptr< ::Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct mocap_SetMocapTransformationRequest
typedef  ::Mocap::mocap_SetMocapTransformationRequest_<std::allocator<void> > mocap_SetMocapTransformationRequest;

typedef boost::shared_ptr< ::Mocap::mocap_SetMocapTransformationRequest> mocap_SetMocapTransformationRequestPtr;
typedef boost::shared_ptr< ::Mocap::mocap_SetMocapTransformationRequest const> mocap_SetMocapTransformationRequestConstPtr;


template <class ContainerAllocator>
struct mocap_SetMocapTransformationResponse_ {
  typedef mocap_SetMocapTransformationResponse_<ContainerAllocator> Type;

  mocap_SetMocapTransformationResponse_()
  : ret(0)
  , msg()
  {
  }

  mocap_SetMocapTransformationResponse_(const ContainerAllocator& _alloc)
  : ret(0)
  , msg(_alloc)
  {
  }

  typedef int64_t _ret_type;
  int64_t ret;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _msg_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  msg;


  typedef boost::shared_ptr< ::Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct mocap_SetMocapTransformationResponse
typedef  ::Mocap::mocap_SetMocapTransformationResponse_<std::allocator<void> > mocap_SetMocapTransformationResponse;

typedef boost::shared_ptr< ::Mocap::mocap_SetMocapTransformationResponse> mocap_SetMocapTransformationResponsePtr;
typedef boost::shared_ptr< ::Mocap::mocap_SetMocapTransformationResponse const> mocap_SetMocapTransformationResponseConstPtr;

struct mocap_SetMocapTransformation
{

typedef mocap_SetMocapTransformationRequest Request;
typedef mocap_SetMocapTransformationResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct mocap_SetMocapTransformation
} // namespace Mocap

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "256392fa17e6514709500a65ddaf30e9";
  }

  static const char* value(const  ::Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x256392fa17e65147ULL;
  static const uint64_t static_value2 = 0x09500a65ddaf30e9ULL;
};

template<class ContainerAllocator>
struct DataType< ::Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Mocap/mocap_SetMocapTransformationRequest";
  }

  static const char* value(const  ::Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 q0\n\
float64 qx\n\
float64 qy\n\
float64 qz\n\
\n\
";
  }

  static const char* value(const  ::Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "1e32786be6359fbbb6259aee4f579d10";
  }

  static const char* value(const  ::Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x1e32786be6359fbbULL;
  static const uint64_t static_value2 = 0xb6259aee4f579d10ULL;
};

template<class ContainerAllocator>
struct DataType< ::Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Mocap/mocap_SetMocapTransformationResponse";
  }

  static const char* value(const  ::Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int64 ret\n\
string msg\n\
\n\
\n\
";
  }

  static const char* value(const  ::Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.x);
    stream.next(m.y);
    stream.next(m.z);
    stream.next(m.q0);
    stream.next(m.qx);
    stream.next(m.qy);
    stream.next(m.qz);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct mocap_SetMocapTransformationRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.ret);
    stream.next(m.msg);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct mocap_SetMocapTransformationResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<Mocap::mocap_SetMocapTransformation> {
  static const char* value() 
  {
    return "13716a3f1e232bc5200a276031ef97c2";
  }

  static const char* value(const Mocap::mocap_SetMocapTransformation&) { return value(); } 
};

template<>
struct DataType<Mocap::mocap_SetMocapTransformation> {
  static const char* value() 
  {
    return "Mocap/mocap_SetMocapTransformation";
  }

  static const char* value(const Mocap::mocap_SetMocapTransformation&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "13716a3f1e232bc5200a276031ef97c2";
  }

  static const char* value(const Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Mocap/mocap_SetMocapTransformation";
  }

  static const char* value(const Mocap::mocap_SetMocapTransformationRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "13716a3f1e232bc5200a276031ef97c2";
  }

  static const char* value(const Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Mocap/mocap_SetMocapTransformation";
  }

  static const char* value(const Mocap::mocap_SetMocapTransformationResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // MOCAP_SERVICE_MOCAP_SETMOCAPTRANSFORMATION_H

