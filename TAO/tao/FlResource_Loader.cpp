//$Id$
#include "FlResource_Loader.h"
#include "ORB_Core.h"
#include "FlResource_Factory.h"

ACE_RCSID( TAO_FlResource,
           FlResource_Loader,
           "$Id$");

#include "ace/FlReactor.h"

TAO_BEGIN_VERSIONED_NAMESPACE_DECL

namespace TAO
{
  FlResource_Loader::FlResource_Loader (void)
  {
    FlResource_Factory *tmp = 0;

    ACE_NEW (tmp,
             FlResource_Factory ());

    TAO_ORB_Core::set_gui_resource_factory( tmp );
  }

  FlResource_Loader::~FlResource_Loader ()
  {
  }
}

TAO_END_VERSIONED_NAMESPACE_DECL
