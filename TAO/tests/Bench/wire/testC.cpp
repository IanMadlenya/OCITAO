// -*- C++ -*-
//
// $Id$

// ****  Code generated by the The ACE ORB (TAO) IDL Compiler ****
// TAO and the TAO IDL Compiler have been developed by:
//       Center for Distributed Object Computing
//       Washington University
//       St. Louis, MO
//       USA
//       http://www.cs.wustl.edu/~schmidt/doc-center.html
// and
//       Distributed Object Computing Laboratory
//       University of California at Irvine
//       Irvine, CA
//       USA
//       http://doc.ece.uci.edu/
// and
//       Institute for Software Integrated Systems
//       Vanderbilt University
//       Nashville, TN
//       USA
//       http://www.isis.vanderbilt.edu/
//
// Information about TAO is available at:
//     http://www.cs.wustl.edu/~schmidt/TAO.html

// TAO_IDL - Generated from
// W:\ACE_wrappers\TAO\TAO_IDL\be\be_codegen.cpp:351


#include "testC.h"
#include "tao/Stub.h"
#include "tao/Invocation.h"
#include "tao/PortableInterceptor.h"

#if TAO_HAS_INTERCEPTORS == 1
#include "tao/RequestInfo_Util.h"
#include "tao/ClientRequestInfo_i.h"
#include "tao/ClientInterceptorAdapter.h"
#endif  /* TAO_HAS_INTERCEPTORS == 1 */

#include "tao/UB_String_Arguments.h"

#if defined (__BORLANDC__)
#pragma option -w-rvl -w-rch -w-ccc -w-aus -w-sig
#endif /* __BORLANDC__ */

#if !defined (__ACE_INLINE__)
#include "testC.i"
#endif /* !defined INLINE */

// TAO_IDL - Generated from
// W:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_interface/interface_cs.cpp:63

int foo::_tao_class_id = 0;

foo_ptr
tao_foo_life::tao_duplicate (
    foo_ptr p
  )
{
  return foo::_duplicate (p);
}

void
tao_foo_life::tao_release (
    foo_ptr p
  )
{
  CORBA::release (p);
}

foo_ptr
tao_foo_life::tao_nil (
    void
  )
{
  return foo::_nil ();
}

CORBA::Boolean
tao_foo_life::tao_marshal (
    foo_ptr p,
    TAO_OutputCDR &cdr
  )
{
  return p->marshal (cdr);
}

foo_ptr
tao_foo_cast::tao_narrow (
    CORBA::Object *p
    ACE_ENV_ARG_DECL
  )
{
  return foo::_narrow (p ACE_ENV_ARG_PARAMETER);
}

CORBA::Object *
tao_foo_cast::tao_upcast (
    void *src
  )
{
  foo **tmp =
    ACE_static_cast (foo **, src);
  return *tmp;
}

#if defined (ACE_HAS_EXPLICIT_TEMPLATE_INSTANTIATION)
  template class
    TAO_Objref_Var_T<
        foo,
        tao_foo_life
      >;
  template class
    TAO_Objref_Out_T<
        foo,
        tao_foo_life
      >;
#elif defined (ACE_HAS_TEMPLATE_INSTANTIATION_PRAGMA)
# pragma instantiate \
    TAO_Objref_Var_T< \
        foo, \
        tao_foo_life \
      >
# pragma instantiate \
    TAO_Objref_Out_T< \
        foo, \
        tao_foo_life \
      >
#endif /* ACE_HAS_EXPLICIT_TEMPLATE_INSTANTIATION */

// TAO_IDL - Generated from
// W:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_interface/interceptors_cs.cpp:56

#if (TAO_HAS_INTERCEPTORS == 1)

// TAO_IDL - Generated from
// W:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_operation/interceptors_cs.cpp:76

class TAO_ClientRequestInfo_foo_all_str : public TAO_ClientRequestInfo_i
{
public:
  TAO_ClientRequestInfo_foo_all_str (
      TAO_GIOP_Invocation *_tao_invocation,
      CORBA::Object_ptr _tao_target,
      const char * inarg,
      char *& inoutarg
      ACE_ENV_ARG_DECL_WITH_DEFAULTS);

    virtual Dynamic::ParameterList * arguments (ACE_ENV_SINGLE_ARG_DECL)
      ACE_THROW_SPEC ((CORBA::SystemException));
    
    virtual Dynamic::ExceptionList * exceptions (ACE_ENV_SINGLE_ARG_DECL)
      ACE_THROW_SPEC ((CORBA::SystemException));
    
    virtual CORBA::Any * result (ACE_ENV_SINGLE_ARG_DECL)
      ACE_THROW_SPEC ((CORBA::SystemException));

    void result (char * result);
    
  private:
    TAO_ClientRequestInfo_foo_all_str (const TAO_ClientRequestInfo_foo_all_str &);
    void operator= (const TAO_ClientRequestInfo_foo_all_str &);
    const char * inarg_;
    char * inoutarg_;
    
    char * _result;
  };
  
  // TAO_IDL - Generated from
  // W:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_operation/interceptors_cs.cpp:376
  
  TAO_ClientRequestInfo_foo_all_str::TAO_ClientRequestInfo_foo_all_str (
      TAO_GIOP_Invocation *_tao_invocation,
      CORBA::Object_ptr _tao_target,
      const char * inarg,
      char *& inoutarg
      ACE_ENV_ARG_DECL_NOT_USED      
    )
      : TAO_ClientRequestInfo_i (_tao_invocation, _tao_target),
      inarg_ (inarg),
      inoutarg_ (inoutarg)
{}

Dynamic::ParameterList *
TAO_ClientRequestInfo_foo_all_str::arguments (ACE_ENV_SINGLE_ARG_DECL)
  ACE_THROW_SPEC ((CORBA::SystemException))
{
  // Generate the argument list on demand.
  Dynamic::ParameterList *parameter_list =
    TAO_RequestInfo_Util::make_parameter_list (ACE_ENV_SINGLE_ARG_PARAMETER);
  ACE_CHECK_RETURN (0);
  
  Dynamic::ParameterList_var safe_parameter_list = parameter_list;
  
  parameter_list->length (2);
  CORBA::ULong len = 0;
  (*parameter_list)[len].argument <<= inarg_;
  (*parameter_list)[len].mode = CORBA::PARAM_IN;
  len++;
  
  (*parameter_list)[len].argument <<= inoutarg_;
  (*parameter_list)[len].mode = CORBA::PARAM_INOUT;
  len++;
  
  return safe_parameter_list._retn ();
}

Dynamic::ExceptionList *
TAO_ClientRequestInfo_foo_all_str::exceptions (ACE_ENV_SINGLE_ARG_DECL)
  ACE_THROW_SPEC ((CORBA::SystemException))
{
  // Generate the exception list on demand.
  Dynamic::ExceptionList *exception_list =
    TAO_RequestInfo_Util::make_exception_list (ACE_ENV_SINGLE_ARG_PARAMETER);
  ACE_CHECK_RETURN (0);
  
  return exception_list;
}

CORBA::Any * 
TAO_ClientRequestInfo_foo_all_str::result (ACE_ENV_SINGLE_ARG_DECL)
  ACE_THROW_SPEC ((CORBA::SystemException))
{
  // Generate the result on demand.
  CORBA::Boolean tk_void_any = 0;
  CORBA::Any *result_any =
    TAO_RequestInfo_Util::make_any (tk_void_any ACE_ENV_ARG_PARAMETER);
  ACE_CHECK_RETURN (0);
  
  CORBA::Any_var safe_result_any = result_any;
  
  (*result_any) <<= this->_result;
  return safe_result_any._retn ();
}

void 
TAO_ClientRequestInfo_foo_all_str::result (char * result)
{
  // Update the result. 
  this->_result = result;
}

#endif /* TAO_HAS_INTERCEPTORS */

// TAO_IDL - Generated from
// W:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_interface/remote_proxy_impl_cs.cpp:31

///////////////////////////////////////////////////////////////////////
//                Base & Remote Proxy  Implementation. 
//

_TAO_foo_Proxy_Impl::_TAO_foo_Proxy_Impl (void)
{}

_TAO_foo_Remote_Proxy_Impl::_TAO_foo_Remote_Proxy_Impl (void)
{}

// Remote Implementation of the IDL interface methods

// TAO_IDL - Generated from
// W:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_operation/remote_proxy_impl_cs.cpp:63

char * _TAO_foo_Remote_Proxy_Impl::all_str (
    CORBA::Object *_collocated_tao_target_,
    const char * inarg,
    char *& inoutarg,
    CORBA::String_out outarg
    ACE_ENV_ARG_DECL
  )
  ACE_THROW_SPEC ((
    CORBA::SystemException
  ))
{
  TAO::Arg_Traits<ACE_InputCDR::to_string>::stub_ret_val _tao_retval;
  TAO::Arg_Traits<ACE_InputCDR::to_string>::in_arg_val _tao_inarg (inarg);
  TAO::Arg_Traits<ACE_InputCDR::to_string>::inout_arg_val _tao_inoutarg (inoutarg);
  TAO::Arg_Traits<ACE_InputCDR::to_string>::out_arg_val _tao_outarg (outarg);

  TAO::Argument *_tao_signature [] =
  {
    &_tao_retval,
    &_tao_inarg,
    &_tao_inoutarg,
    &_tao_outarg
  };

  TAO_Stub *istub = _collocated_tao_target_->_stubobj ();
  
  if (istub == 0)
    {
      ACE_THROW_RETURN (CORBA::INTERNAL (),_tao_retval.excp ());
    }
    
  TAO_GIOP_Twoway_Invocation _tao_call (
      istub,
      "all_str",
      7,
      2,
      istub->orb_core ()
    );
  
  int _invoke_status;
  
#if (TAO_HAS_INTERCEPTORS == 1)
  TAO_ClientRequestInterceptor_Adapter _tao_vfr (
      istub->orb_core ()->client_request_interceptors (),
      &_tao_call,
      _invoke_status
    );
  
#endif  /* TAO_HAS_INTERCEPTORS */
  
  for (;;)
    {
      _invoke_status = TAO_INVOKE_EXCEPTION;
      
#if TAO_HAS_INTERCEPTORS == 1
      // @@@ (JP) This constructor will eventually take _tao_signature.
      TAO_ClientRequestInfo_foo_all_str _tao_ri (
          &_tao_call,
          _collocated_tao_target_,
          inarg,
          inoutarg
          ACE_ENV_ARG_PARAMETER
        );
      ACE_CHECK_RETURN (_tao_retval.excp ());
      
#endif /* TAO_HAS_INTERCEPTORS */
      
      CORBA::Short _tao_response_flag = TAO_TWOWAY_RESPONSE_FLAG;
      TAO_INTERCEPTOR (_tao_ri.response_expected (1));
      
#if TAO_HAS_INTERCEPTORS == 1
      
      ACE_TRY
        {
          _tao_vfr.send_request (
              &_tao_ri
              ACE_ENV_ARG_PARAMETER
            );
          ACE_TRY_CHECK;
          
          if (_invoke_status == TAO_INVOKE_RESTART)
            {
              _tao_call.restart_flag (1);
            }
          else
            {
              
#endif /* TAO_HAS_INTERCEPTORS */
              
              _tao_call.start (ACE_ENV_SINGLE_ARG_PARAMETER);
              TAO_INTERCEPTOR_CHECK_RETURN (_tao_retval.excp ());

              _tao_call.prepare_header (
                  ACE_static_cast (CORBA::Octet, _tao_response_flag)
                  ACE_ENV_ARG_PARAMETER
                );
              TAO_INTERCEPTOR_CHECK_RETURN (_tao_retval.excp ());

              TAO_OutputCDR &_tao_out = _tao_call.out_stream ();
              
              if (!(
                  (_tao_retval.marshal (_tao_out)) &&
                  (_tao_inarg.marshal (_tao_out)) &&
                  (_tao_inoutarg.marshal (_tao_out)) &&
                  (_tao_outarg.marshal (_tao_out))
                  ))
                {
                  TAO_OutputCDR::throw_stub_exception (errno ACE_ENV_ARG_PARAMETER); 
                  TAO_INTERCEPTOR_CHECK_RETURN (_tao_retval.excp ());

                }
              
              _invoke_status =
                _tao_call.invoke (0, 0 ACE_ENV_ARG_PARAMETER);
              TAO_INTERCEPTOR_CHECK_RETURN (_tao_retval.excp ());

              if (_invoke_status == TAO_INVOKE_EXCEPTION)
                {
                  TAO_INTERCEPTOR_THROW_RETURN (
                      CORBA::UNKNOWN (
                          CORBA::OMGVMCID | 1, CORBA::COMPLETED_YES
                        ),
                      _tao_retval.excp ()
                    );
                }
              else if (_invoke_status == TAO_INVOKE_RESTART)
                {
                  _tao_call.restart_flag (1);
                  TAO_INTERCEPTOR (
                      _tao_ri.reply_status (_invoke_status);
                      _tao_vfr.receive_other (
                          &_tao_ri
                          ACE_ENV_ARG_PARAMETER
                        );
                      ACE_TRY_CHECK;
                    )
                }
              else
                {                 
                  TAO_InputCDR &_tao_in = _tao_call.inp_stream ();
                  _tao_call.transport()->assign_translators (&_tao_in,0);
                  
                  if (!(
                      (_tao_retval.demarshal (_tao_in)) &&
                      (_tao_inarg.demarshal (_tao_in)) &&
                      (_tao_inoutarg.demarshal (_tao_in)) &&
                      (_tao_outarg.demarshal (_tao_in))
                      ))
                    {
                      TAO_InputCDR::throw_stub_exception (errno ACE_ENV_ARG_PARAMETER); 
                      TAO_INTERCEPTOR_CHECK_RETURN (_tao_retval.excp ());

                      
                    }
                  
#if TAO_HAS_INTERCEPTORS == 1
                  // @@@ (JP) This call will eventually take _tao_signature[0].
                  char * _tao_retval_info = 0;
                  _tao_ri.result (_tao_retval_info);
                  
                  _tao_ri.reply_status (_invoke_status);
                  _tao_vfr.receive_reply (
                      &_tao_ri
                      ACE_ENV_ARG_PARAMETER
                    );
                  ACE_TRY_CHECK;
                
#endif  /* TAO_HAS_INTERCEPTORS */
                }
            
#if TAO_HAS_INTERCEPTORS == 1
            }
        }
      ACE_CATCHANY
        {
          _tao_ri.exception (&ACE_ANY_EXCEPTION);
          _tao_vfr.receive_exception (
              &_tao_ri
              ACE_ENV_ARG_PARAMETER
            );
          ACE_TRY_CHECK;
          
          const PortableInterceptor::ReplyStatus _tao_status =
            _tao_ri.reply_status (ACE_ENV_SINGLE_ARG_PARAMETER);
          ACE_TRY_CHECK;
          
          if (_tao_status == PortableInterceptor::SYSTEM_EXCEPTION
              || _tao_status == PortableInterceptor::USER_EXCEPTION)
            {
              ACE_RE_THROW;
            }
        }
      
# if defined (ACE_HAS_EXCEPTIONS) \
     && defined (ACE_HAS_BROKEN_UNEXPECTED_EXCEPTIONS)
      ACE_CATCHALL
        {
          CORBA::UNKNOWN ex;
          
          _tao_ri.exception (&ex);
          _tao_vfr.receive_exception (
              &_tao_ri
              ACE_ENV_ARG_PARAMETER
            );
          ACE_TRY_CHECK;
          
          const PortableInterceptor::ReplyStatus _tao_status =
            _tao_ri.reply_status (ACE_ENV_SINGLE_ARG_PARAMETER);
          ACE_TRY_CHECK;
          
          if (_tao_status == PortableInterceptor::SYSTEM_EXCEPTION)
            ACE_TRY_THROW (ex);
        }
# endif  /* ACE_HAS_EXCEPTIONS && ACE_HAS_BROKEN_UNEXPECTED_EXCEPTIONS */
      
      ACE_ENDTRY;
      ACE_CHECK_RETURN (_tao_retval.excp ());
      
      const PortableInterceptor::ReplyStatus _tao_status =
        _tao_ri.reply_status (ACE_ENV_SINGLE_ARG_PARAMETER);
      ACE_CHECK_RETURN (_tao_retval.excp ());
      
      if (_tao_status != PortableInterceptor::LOCATION_FORWARD
          && _tao_status != PortableInterceptor::TRANSPORT_RETRY)
        
#endif  /* TAO_HAS_INTERCEPTORS */
        
        if (_invoke_status != TAO_INVOKE_RESTART)
          break;
    }

return _tao_retval.retn ();
}

//
//            End  Base & Remote  Proxy Implemeentation. 
///////////////////////////////////////////////////////////////////////

// TAO_IDL - Generated from
// W:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_interface/remote_proxy_broker_cs.cpp:31

///////////////////////////////////////////////////////////////////////
//           Remote & Base  Proxy Broker Implementation
//

_TAO_foo_Proxy_Broker::_TAO_foo_Proxy_Broker (void)
{
}

_TAO_foo_Proxy_Broker::~_TAO_foo_Proxy_Broker (void)
{
}

_TAO_foo_Proxy_Broker * (*_TAO_foo_Proxy_Broker_Factory_function_pointer) (
    CORBA::Object_ptr obj
  ) = 0;

// Factory Member function Implementation.
_TAO_foo_Remote_Proxy_Broker *
_TAO_foo_Remote_Proxy_Broker::the_TAO_foo_Remote_Proxy_Broker (void)
{
  static ::_TAO_foo_Remote_Proxy_Broker remote_proxy_broker;
  return &remote_proxy_broker;
}

_TAO_foo_Remote_Proxy_Broker::_TAO_foo_Remote_Proxy_Broker (void)
{
}

_TAO_foo_Remote_Proxy_Broker::~_TAO_foo_Remote_Proxy_Broker (void)
{
}

_TAO_foo_Proxy_Impl&
_TAO_foo_Remote_Proxy_Broker::select_proxy (
    ::foo *
    ACE_ENV_ARG_DECL_NOT_USED
  )
{
  return this->remote_proxy_impl_;
}

//
//           End Remote & Base Proxy Broker Implementation
///////////////////////////////////////////////////////////////////////

// TAO_IDL - Generated from 
// W:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_interface/interface_cs.cpp:245

foo::foo (int collocated)
{
  this->foo_setup_collocation (collocated);
}

void
foo::foo_setup_collocation (int collocated)
{
  if (collocated)
    this->the_TAO_foo_Proxy_Broker_ =
      ::_TAO_foo_Proxy_Broker_Factory_function_pointer (this);
  else
    this->the_TAO_foo_Proxy_Broker_ =
      ::_TAO_foo_Remote_Proxy_Broker::the_TAO_foo_Remote_Proxy_Broker ();
}

foo::~foo (void)
{}

void 
foo::_tao_any_destructor (void *_tao_void_pointer)
{
  foo *tmp = ACE_static_cast (foo *, _tao_void_pointer);
  CORBA::release (tmp);
}

foo_ptr
foo::_narrow (
    CORBA::Object_ptr obj
    ACE_ENV_ARG_DECL
  )
{
  if (CORBA::is_nil (obj))
    {
      return foo::_nil ();
    }
  
  if (! obj->_is_local ())
    {
      CORBA::Boolean is_a =
        obj->_is_a (
            "IDL:foo:1.0"
            ACE_ENV_ARG_PARAMETER
          );
      ACE_CHECK_RETURN (foo::_nil ());
      
      if (is_a == 0)
        {
          return foo::_nil ();
        }
    }
  
  return foo::_unchecked_narrow (obj ACE_ENV_ARG_PARAMETER);
}

foo_ptr 
foo::_unchecked_narrow (
    CORBA::Object_ptr obj
    ACE_ENV_ARG_DECL_NOT_USED
  )
{
  if (CORBA::is_nil (obj))
    {
      return foo::_nil ();
    }
  
  foo_ptr default_proxy = foo::_nil ();
  
  // Code for lazily evaluated IOR's
  if (!obj->is_evaluated ())
    {
      ACE_NEW_RETURN (
          default_proxy,
          ::foo (
              obj->steal_ior (),
              obj->orb_core ()
            ),
          foo::_nil ()
        );
      
      return default_proxy;
    }
  
  if (! obj->_is_local ())
    {
      TAO_Stub* stub = obj->_stubobj ();
      
      if (stub != 0)
        {
          stub->_incr_refcnt ();
        }
      
      if (
          !CORBA::is_nil (stub->servant_orb_var ().ptr ()) &&
          stub->servant_orb_var ()->orb_core ()->optimize_collocation_objects () &&
          obj->_is_collocated () &&
          _TAO_foo_Proxy_Broker_Factory_function_pointer != 0
        )
        {
          ACE_NEW_RETURN (
              default_proxy,
              ::foo (
                  stub,
                  1,
                  obj->_servant ()
                ),
              foo::_nil ()
            );
        }
      
      if (CORBA::is_nil (default_proxy))
        {
          ACE_NEW_RETURN (
              default_proxy,
              ::foo (
                  stub,
                  0,
                  obj->_servant ()
                ),
              foo::_nil ()
            );
        }
      
      return default_proxy;
    }
  else 
    return
      ACE_reinterpret_cast (
          foo_ptr,
          obj->_tao_QueryInterface (
              ACE_reinterpret_cast (
                  ptrdiff_t,
                  &foo::_tao_class_id
                )
            )
        );
}

foo_ptr
foo::_duplicate (foo_ptr obj)
{
  if (! CORBA::is_nil (obj))
    {
      obj->_add_ref ();
    }
  
  return obj;
}

CORBA::Boolean
foo::_is_a (
    const char *value
    ACE_ENV_ARG_DECL
  )
{
  if (
      !ACE_OS::strcmp (
          (char *)value,
          "IDL:foo:1.0"
        ) ||
      !ACE_OS::strcmp (
          (char *)value,
          "IDL:omg.org/CORBA/Object:1.0"
        )
     )
    {
      return 1; // success using local knowledge
    }
  else
    {
      return this->ACE_NESTED_CLASS (CORBA, Object)::_is_a (
          value
          ACE_ENV_ARG_PARAMETER
        );
    }
}

void *foo::_tao_QueryInterface (ptrdiff_t type)
{
  void *retv = 0;
  
  if (type == ACE_reinterpret_cast (
              ptrdiff_t,
              &foo::_tao_class_id)
            )
    {
      retv = ACE_reinterpret_cast (void*, this);
    }
  else if (type == ACE_reinterpret_cast (
               ptrdiff_t,
               &CORBA::Object::_tao_class_id)
             )
    {
      retv =
        ACE_reinterpret_cast (
            void *,
            ACE_static_cast (CORBA::Object_ptr, this)
          );
    }
  
  if (retv != 0)
    {
      this->_add_ref ();
    }
  
  return retv;
}

const char* foo::_interface_repository_id (void) const
{
  return "IDL:foo:1.0";
}

CORBA::Boolean
foo::marshal (TAO_OutputCDR &cdr)
{
  return (cdr << this);
}

// TAO_IDL - Generated from
// W:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_operation/operation_cs.cpp:80

char * foo::all_str (
    const char * inarg,
    char *& inoutarg,
    CORBA::String_out outarg
    ACE_ENV_ARG_DECL
  )
  ACE_THROW_SPEC ((
    CORBA::SystemException
  ))
{
  if (!this->is_evaluated ())
    {
      ACE_NESTED_CLASS (CORBA, Object)::tao_object_initialize (this);
    
    }
  if (this->the_TAO_foo_Proxy_Broker_ == 0)
    {
      foo_setup_collocation (
          this->ACE_NESTED_CLASS (CORBA, Object)::_is_collocated ()
        );
    }
  
  _TAO_foo_Proxy_Impl &proxy = 
    this->the_TAO_foo_Proxy_Broker_->select_proxy (this ACE_ENV_ARG_PARAMETER);
  ACE_CHECK_RETURN (0);
  
  return proxy.all_str (
      this,
      inarg,
      inoutarg,
      outarg
      ACE_ENV_ARG_PARAMETER
    );
}

// TAO_IDL - Generated from
// W:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_typecode/typecode_defn.cpp:284

static const CORBA::Long _oc_foo[] =
{
    TAO_ENCAP_BYTE_ORDER, // byte order
  12,
  ACE_NTOHL (0x49444c3a), 
  ACE_NTOHL (0x666f6f3a), 
  ACE_NTOHL (0x312e3000),  // repository ID = IDL:foo:1.0
    4,
  ACE_NTOHL (0x666f6f00),  // name = foo
  };

static CORBA::TypeCode _tc_TAO_tc_foo (
    CORBA::tk_objref,
    sizeof (_oc_foo),
    (char *) &_oc_foo,
    0,
    sizeof (foo)
  );

::CORBA::TypeCode_ptr _tc_foo =
  &_tc_TAO_tc_foo;

// TAO_IDL - Generated from
// W:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_interface/any_op_cs.cpp:50

// Copying insertion.
void
operator<<= (
    CORBA::Any &_tao_any,
    foo_ptr _tao_elem
  )
{
  foo_ptr _tao_objptr =
    foo::_duplicate (_tao_elem);
  _tao_any <<= &_tao_objptr;
}

// Non-copying insertion.
void
operator<<= (
    CORBA::Any &_tao_any,
    foo_ptr *_tao_elem
  )
{
  TAO::Any_Impl_T<foo>::insert (
      _tao_any,
      foo::_tao_any_destructor,
      _tc_foo,
      *_tao_elem
    );
}

CORBA::Boolean
operator>>= (
    const CORBA::Any &_tao_any,
    foo_ptr &_tao_elem
  )
{
  return
    TAO::Any_Impl_T<foo>::extract (
        _tao_any,
        foo::_tao_any_destructor,
        _tc_foo,
        _tao_elem
      );
}

#if defined (ACE_HAS_EXPLICIT_TEMPLATE_INSTANTIATION)  || \
    defined (ACE_HAS_GNU_REPO)
  template class TAO::Any_Impl_T<foo>;
#elif defined (ACE_HAS_TEMPLATE_INSTANTIATION_PRAGMA)
# pragma instantiate TAO::Any_Impl_T<foo>
#endif /* ACE_HAS_EXPLICIT_TEMPLATE_INSTANTIATION */

// TAO_IDL - Generated from
// W:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_interface/cdr_op_cs.cpp:63

CORBA::Boolean operator<< (
    TAO_OutputCDR &strm,
    const foo_ptr _tao_objref
  )
{
  CORBA::Object_ptr _tao_corba_obj = _tao_objref;
  return (strm << _tao_corba_obj);
}

CORBA::Boolean operator>> (
    TAO_InputCDR &strm,
    foo_ptr &_tao_objref
  )
{
  ACE_TRY_NEW_ENV
  {
    CORBA::Object_var obj;
    
    if ((strm >> obj.inout ()) == 0)
      {
        return 0;
      }
    
    // Narrow to the right type.
    _tao_objref =
      foo::_unchecked_narrow (
          obj.in ()
          ACE_ENV_ARG_PARAMETER
        );
    ACE_TRY_CHECK;
    return 1;
  }
  ACE_CATCHANY
  {
    // do nothing
  }
  ACE_ENDTRY;
  return 0;
}

