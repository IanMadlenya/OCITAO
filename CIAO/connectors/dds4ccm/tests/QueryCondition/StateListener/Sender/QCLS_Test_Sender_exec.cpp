// -*- C++ -*-
// $Id$

/**
 * Code generated by the The ACE ORB (TAO) IDL Compiler v1.8.3
 * TAO and the TAO IDL Compiler have been developed by:
 *       Center for Distributed Object Computing
 *       Washington University
 *       St. Louis, MO
 *       USA
 *       http://www.cs.wustl.edu/~schmidt/doc-center.html
 * and
 *       Distributed Object Computing Laboratory
 *       University of California at Irvine
 *       Irvine, CA
 *       USA
 * and
 *       Institute for Software Integrated Systems
 *       Vanderbilt University
 *       Nashville, TN
 *       USA
 *       http://www.isis.vanderbilt.edu/
 *
 * Information about TAO is available at:
 *     http://www.cs.wustl.edu/~schmidt/TAO.html
 **/

#include "QCLS_Test_Sender_exec.h"
#include "tao/ORB_Core.h"
#include "ace/Reactor.h"

namespace CIAO_QCLS_Test_Sender_Impl
{
  /**
   * Start Handler
   */

  StartHandler::StartHandler(Sender_exec_i &callback)
    : callback_ (callback)
  {
  }

  int
  StartHandler::handle_exception (ACE_HANDLE)
  {
    this->callback_.run ();
    return 0;
  }

  /**
   * Update Ticker
   */

  UpdateTicker::UpdateTicker (Sender_exec_i &callback)
    : callback_ (callback),
      last_iter_ (0)
  {
  }

  int
  UpdateTicker::handle_timeout (const ACE_Time_Value &, const void *)
  {
    // Notify the subscribers
    this->callback_.update_one (++this->last_iter_);
    return 0;
  }

  /**
   * Component Executor Implementation Class: Sender_exec_i
   */

  Sender_exec_i::Sender_exec_i (void)
    : keys_ (5)
      , iterations_ (10)
  {
    this->ticker_ = new UpdateTicker (*this);
    this->rh_ = new StartHandler (*this);
  }

  Sender_exec_i::~Sender_exec_i (void)
  {
    delete this->rh_;
    delete this->ticker_;
  }

  // Supported operations and attributes.
  ACE_Reactor*
  Sender_exec_i::reactor (void)
  {
    ACE_Reactor* reactor = 0;
    ::CORBA::Object_var ccm_object =
      this->ciao_context_->get_CCM_object();
    if (! ::CORBA::is_nil (ccm_object.in ()))
      {
        ::CORBA::ORB_var orb = ccm_object->_get_orb ();
        if (! ::CORBA::is_nil (orb.in ()))
          {
            reactor = orb->orb_core ()->reactor ();
          }
      }
    if (reactor == 0)
      {
        throw ::CORBA::INTERNAL ();
      }
    return reactor;
  }

  void
  Sender_exec_i::update_one (CORBA::UShort iter)
  {
    ::QCLS_Test::QueryConditionListenStateTestConnector::Updater_var
      updater = this->ciao_context_->get_connection_info_update_data ();

    if (! ::CORBA::is_nil (updater.in ()) &&
        iter <= this->iterations ())
      {
        for (CORBA::UShort i = 1; i < this->keys () + 1; ++i)
          {
            char key[7];
            ACE_OS::sprintf (key, "KEY_%d", i);
            QueryConditionListenStateTest update_key;
            update_key.key = CORBA::string_dup (key);
            update_key.iteration = iter;
            updater->update_one (update_key, ::DDS::HANDLE_NIL);
            ACE_DEBUG ((LM_DEBUG, "Updated key <%C> - <%u>\n",
                          key, iter));

          }
      }
    else
      {
        ACE_DEBUG ((LM_DEBUG, "Sender_exec_i::update_one - "
                              "Finished updating. Cancel Timer.\n"));
        this->reactor ()->cancel_timer (this->ticker_);
      }
  }

  void
  Sender_exec_i::run ()
  {
    ::QCLS_Test::QueryConditionListenStateTestConnector::Updater_var
      updater = this->ciao_context_->get_connection_info_update_data ();
    // First create the instances for consecutive updating.
    for (::CORBA::UShort i = 1;
         i < this->keys () + 1 && !::CORBA::is_nil (updater.in ());
         ++i)
      {
        char key[7];
        ACE_OS::sprintf (key, "KEY_%d", i);
        QueryConditionListenStateTest new_key;
        new_key.key = CORBA::string_dup(key);
        new_key.iteration = 0;
        updater->create_one (new_key);
      }

   if (this->reactor ()->schedule_timer (
                this->ticker_,
                0,
                ACE_Time_Value (5, 50000),
                ACE_Time_Value (0, 50000)) == -1)
      {
        ACE_ERROR ((LM_ERROR, ACE_TEXT ("Sender_exec_i::start : ")
                              ACE_TEXT ("Error scheduling timer")));
      }
  }

  void
  Sender_exec_i::start (void)
  {
    this->reactor ()->notify (this->rh_);
  }

  // Component attributes and port operations.

  ::CORBA::UShort
  Sender_exec_i::keys (void)
  {
    return this->keys_;
  }

  void
  Sender_exec_i::keys (
    const ::CORBA::UShort keys)
  {
    this->keys_ = keys;
  }

  ::CORBA::UShort
  Sender_exec_i::iterations (void)
  {
    return this->iterations_;
  }

  void
  Sender_exec_i::iterations (
    const ::CORBA::UShort iterations)
  {
    this->iterations_ = iterations;
  }

  // Operations from Components::SessionComponent.

  void
  Sender_exec_i::set_session_context (
    ::Components::SessionContext_ptr ctx)
  {
    this->ciao_context_ =
      ::QCLS_Test::CCM_Sender_Context::_narrow (ctx);

    if ( ::CORBA::is_nil (this->ciao_context_.in ()))
      {
        throw ::CORBA::INTERNAL ();
      }
  }

  void
  Sender_exec_i::configuration_complete (void)
  {
    /* Your code here. */
  }

  void
  Sender_exec_i::ccm_activate (void)
  {
    start ();
  }

  void
  Sender_exec_i::ccm_passivate (void)
  {
    /* Your code here. */
  }

  void
  Sender_exec_i::ccm_remove (void)
  {
    /* Your code here. */
  }

  extern "C" SENDER_EXEC_Export ::Components::EnterpriseComponent_ptr
  create_QCLS_Test_Sender_Impl (void)
  {
    ::Components::EnterpriseComponent_ptr retval =
      ::Components::EnterpriseComponent::_nil ();

    ACE_NEW_NORETURN (
      retval,
      Sender_exec_i);

    return retval;
  }
}