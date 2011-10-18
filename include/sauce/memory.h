#ifndef SAUCE_SAUCE_MEMORY_H_
#define SAUCE_SAUCE_MEMORY_H_

#if SAUCE_STD_SMART_PTR
  #include <memory>
  #define SAUCE_SHARED_PTR std::shared_ptr
  #define SAUCE_WEAK_PTR std::weak_ptr
  #define SAUCE_STATIC_POINTER_CAST std::static_pointer_cast
#elif SAUCE_STD_TR1_SMART_PTR
  #include <tr1/memory>
  #define SAUCE_SHARED_PTR std::tr1::shared_ptr
  #define SAUCE_WEAK_PTR std::tr1::weak_ptr
  #define SAUCE_STATIC_POINTER_CAST std::tr1::static_pointer_cast
#elif SAUCE_BOOST_SMART_PTR
  #include <boost/shared_ptr.hpp>
  #define SAUCE_SHARED_PTR boost::shared_ptr
  #define SAUCE_WEAK_PTR boost::weak_ptr
  #define SAUCE_STATIC_POINTER_CAST boost::static_pointer_cast
#else
  #error Please define one of SAUCE_STD_SMART_PTR, SAUCE_STD_TR1_SMART_PTR or SAUCE_BOOST_SMART_PTR
#endif

#endif // SAUCE_SAUCE_MEMORY_H_