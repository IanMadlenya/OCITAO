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
//
// Information about TAO is available at:
//     http://www.cs.wustl.edu/~schmidt/TAO.html


#if !defined (TAO_USE_SEQUENCE_TEMPLATES)

#if !defined (__TAO_UNBOUNDED_OBJECT_SEQUENCE_CORBA_POLICYLIST_CI_)
#define __TAO_UNBOUNDED_OBJECT_SEQUENCE_CORBA_POLICYLIST_CI_

ACE_INLINE CORBA::Policy **
CORBA::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList::allocbuf (CORBA::ULong nelems)
{
  CORBA::Policy **buf = 0;
  
  ACE_NEW_RETURN (buf, CORBA::Policy*[nelems], 0);
  
  for (CORBA::ULong i = 0; i < nelems; i++)
    {
      buf[i] = tao_CORBA_Policy_nil ();
    }
  
  return buf;
}

ACE_INLINE void 
CORBA::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList::freebuf (CORBA::Policy **buffer)
{
  if (buffer == 0)
    return;
  delete[] buffer;
}

ACE_INLINE
CORBA::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList (void)
{
}

ACE_INLINE
CORBA::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList (CORBA::ULong maximum)
  : TAO_Unbounded_Base_Sequence (maximum, _TAO_Unbounded_Object_Sequence_CORBA_PolicyList::allocbuf (maximum))
{
}

ACE_INLINE
CORBA::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList (CORBA::ULong maximum,
  CORBA::ULong length,
  CORBA::Policy* *value,
  CORBA::Boolean release)
: TAO_Unbounded_Base_Sequence (maximum, length, value, release)
{
}

ACE_INLINE
CORBA::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList(const _TAO_Unbounded_Object_Sequence_CORBA_PolicyList &rhs)
  : TAO_Unbounded_Base_Sequence (rhs)
{
  if (rhs.buffer_ != 0)
  {
    CORBA::Policy **tmp1 = _TAO_Unbounded_Object_Sequence_CORBA_PolicyList::allocbuf (this->maximum_);
    CORBA::Policy ** const tmp2 = ACE_reinterpret_cast (CORBA::Policy ** ACE_CAST_CONST, rhs.buffer_);
    
    for (CORBA::ULong i = 0; i < rhs.length_; ++i)
      {
        tmp1[i] = tao_CORBA_Policy_duplicate (tmp2[i]);
      }
    
    this->buffer_ = tmp1;
  }
  else
  {
    this->buffer_ = 0;
  }
}

ACE_INLINE CORBA::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList &
CORBA::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList::operator= (const _TAO_Unbounded_Object_Sequence_CORBA_PolicyList &rhs)
{
  if (this == &rhs)
    return *this;
  
  if (this->release_)
  {
    CORBA::Policy **tmp = ACE_reinterpret_cast (CORBA::Policy **, this->buffer_);
    
    for (CORBA::ULong i = 0; i < this->length_; ++i)
    {
      tao_CORBA_Policy_release (tmp[i]);
      tmp[i] = tao_CORBA_Policy_nil ();
    }
    if (this->maximum_ < rhs.maximum_)
    {
      _TAO_Unbounded_Object_Sequence_CORBA_PolicyList::freebuf (tmp);
      this->buffer_ = _TAO_Unbounded_Object_Sequence_CORBA_PolicyList::allocbuf (rhs.maximum_);
    }
  }
  else
    this->buffer_ = _TAO_Unbounded_Object_Sequence_CORBA_PolicyList::allocbuf (rhs.maximum_);
  
  TAO_Unbounded_Base_Sequence::operator= (rhs);
  
  CORBA::Policy **tmp1 = ACE_reinterpret_cast (CORBA::Policy **, this->buffer_);
  CORBA::Policy ** const tmp2 = ACE_reinterpret_cast (CORBA::Policy ** ACE_CAST_CONST, rhs.buffer_);
  
  for (CORBA::ULong i = 0; i < rhs.length_; ++i)
    {
      tmp1[i] = tao_CORBA_Policy_duplicate (tmp2[i]);
    }
  
  return *this;
}

ACE_INLINE TAO_Object_Manager<CORBA::Policy,CORBA::Policy_var>
CORBA::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList::operator[] (CORBA::ULong index) const
// read-write accessor
{
  ACE_ASSERT (index < this->maximum_);
  CORBA::Policy ** const tmp = ACE_reinterpret_cast (CORBA::Policy ** ACE_CAST_CONST, this->buffer_);
  return TAO_Object_Manager<CORBA::Policy,CORBA::Policy_var> (tmp + index, this->release_);
}

ACE_INLINE CORBA::Policy* *
CORBA::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList::get_buffer (CORBA::Boolean orphan)
{
  CORBA::Policy **result = 0;
  if (orphan == 0)
  {
    // We retain ownership.
    if (this->buffer_ == 0)
    {
      result = _TAO_Unbounded_Object_Sequence_CORBA_PolicyList::allocbuf (this->maximum_);
      this->buffer_ = result;
      this->release_ = 1;
    }
    else
    {
      result = ACE_reinterpret_cast (CORBA::Policy**, this->buffer_);
    }
  }
  else // if (orphan == 1)
  {
    if (this->release_ != 0)
    {
      // We set the state back to default and relinquish
      // ownership.
      result = ACE_reinterpret_cast(CORBA::Policy**,this->buffer_);
      this->maximum_ = 0;
      this->length_ = 0;
      this->buffer_ = 0;
      this->release_ = 0;
    }
  }
  return result;
}

ACE_INLINE const CORBA::Policy* *
CORBA::_TAO_Unbounded_Object_Sequence_CORBA_PolicyList::get_buffer (void) const
{
  return ACE_reinterpret_cast(const CORBA::Policy ** ACE_CAST_CONST, this->buffer_);
}


#endif /* end #if !defined */


#endif /* !TAO_USE_SEQUENCE_TEMPLATES */ 

#if !defined (_CORBA_POLICYLIST_CI_)
#define _CORBA_POLICYLIST_CI_

// *************************************************************
// Inline operations for class CORBA::PolicyList_var
// *************************************************************

ACE_INLINE
CORBA::PolicyList_var::PolicyList_var (void) // default constructor
  : ptr_ (0)
{}

ACE_INLINE
CORBA::PolicyList_var::PolicyList_var (PolicyList *p)
  : ptr_ (p)
{}

ACE_INLINE
CORBA::PolicyList_var::PolicyList_var (const ::CORBA::PolicyList_var &p) // copy constructor
{
  if (p.ptr_)
    ACE_NEW (this->ptr_, ::CORBA::PolicyList (*p.ptr_));
  else
    this->ptr_ = 0;
}

ACE_INLINE
CORBA::PolicyList_var::~PolicyList_var (void) // destructor
{
  delete this->ptr_;
}

ACE_INLINE CORBA::PolicyList_var &
CORBA::PolicyList_var::operator= (PolicyList *p)
{
  delete this->ptr_;
  this->ptr_ = p;
  return *this;
}

ACE_INLINE ::CORBA::PolicyList_var &
CORBA::PolicyList_var::operator= (const ::CORBA::PolicyList_var &p)
{
  if (this != &p)
    {
      if (p.ptr_ == 0)
        {
          delete this->ptr_;
          this->ptr_ = 0;
        }
      else
        {
          PolicyList *deep_copy =
            new PolicyList (*p.ptr_);
          
          if (deep_copy != 0)
            {
              PolicyList *tmp = deep_copy;
              deep_copy = this->ptr_;
              this->ptr_ = tmp;
              delete deep_copy;
            }
        }
    }
  
  return *this;
}

ACE_INLINE const ::CORBA::PolicyList *
CORBA::PolicyList_var::operator-> (void) const
{
  return this->ptr_;
}

ACE_INLINE ::CORBA::PolicyList *
CORBA::PolicyList_var::operator-> (void)
{
  return this->ptr_;
}

ACE_INLINE 
CORBA::PolicyList_var::operator const ::CORBA::PolicyList &() const // cast
{
  return *this->ptr_;
}

ACE_INLINE 
CORBA::PolicyList_var::operator ::CORBA::PolicyList &() // cast 
{
  return *this->ptr_;
}

ACE_INLINE 
CORBA::PolicyList_var::operator ::CORBA::PolicyList &() const // cast 
{
  return *this->ptr_;
}

// variable-size types only
ACE_INLINE
CORBA::PolicyList_var::operator ::CORBA::PolicyList *&() // cast 
{
  return this->ptr_;
}

ACE_INLINE TAO_Object_Manager<CORBA::Policy, CORBA::Policy_var>
CORBA::PolicyList_var::operator[] (CORBA::ULong index)
{
  return this->ptr_->operator[] (index);
}

ACE_INLINE const ::CORBA::PolicyList &
CORBA::PolicyList_var::in (void) const
{
  return *this->ptr_;
}

ACE_INLINE ::CORBA::PolicyList &
CORBA::PolicyList_var::inout (void)
{
  return *this->ptr_;
}

// mapping for variable size 
ACE_INLINE ::CORBA::PolicyList *&
CORBA::PolicyList_var::out (void)
{
  delete this->ptr_;
  this->ptr_ = 0;
  return this->ptr_;
}

ACE_INLINE ::CORBA::PolicyList *
CORBA::PolicyList_var::_retn (void)
{
  ::CORBA::PolicyList *tmp = this->ptr_;
  this->ptr_ = 0;
  return tmp;
}

ACE_INLINE ::CORBA::PolicyList *
CORBA::PolicyList_var::ptr (void) const
{
  return this->ptr_;
}

// *************************************************************
// Inline operations for class CORBA::PolicyList_out
// *************************************************************

ACE_INLINE
CORBA::PolicyList_out::PolicyList_out (PolicyList *&p)
  : ptr_ (p)
{
  this->ptr_ = 0;
}

ACE_INLINE
CORBA::PolicyList_out::PolicyList_out (PolicyList_var &p) // constructor from _var
  : ptr_ (p.out ())
{
  delete this->ptr_;
  this->ptr_ = 0;
}

ACE_INLINE
CORBA::PolicyList_out::PolicyList_out (const ::CORBA::PolicyList_out &p) // copy constructor
  : ptr_ (ACE_const_cast (PolicyList_out&, p).ptr_)
{}

ACE_INLINE ::CORBA::PolicyList_out &
CORBA::PolicyList_out::operator= (const ::CORBA::PolicyList_out &p)
{
  this->ptr_ = ACE_const_cast (PolicyList_out&, p).ptr_;
  return *this;
}

ACE_INLINE ::CORBA::PolicyList_out &
CORBA::PolicyList_out::operator= (PolicyList *p)
{
  this->ptr_ = p;
  return *this;
}

ACE_INLINE 
CORBA::PolicyList_out::operator ::CORBA::PolicyList *&() // cast
{
  return this->ptr_;
}

ACE_INLINE ::CORBA::PolicyList *&
CORBA::PolicyList_out::ptr (void) // ptr
{
  return this->ptr_;
}

ACE_INLINE ::CORBA::PolicyList *
CORBA::PolicyList_out::operator-> (void)
{
  return this->ptr_;
}

ACE_INLINE TAO_Object_Manager<CORBA::Policy, CORBA::Policy_var>
CORBA::PolicyList_out::operator[] (CORBA::ULong index)
{
  return this->ptr_->operator[] (index);
}


#endif /* end #if !defined */


#if !defined (TAO_USE_SEQUENCE_TEMPLATES)

#if !defined (__TAO_UNBOUNDED_SEQUENCE_CORBA_POLICYTYPESEQ_CI_)
#define __TAO_UNBOUNDED_SEQUENCE_CORBA_POLICYTYPESEQ_CI_

// = Static operations.
ACE_INLINE CORBA::ULong *
CORBA::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::allocbuf (CORBA::ULong size)
// Allocate storage for the sequence.
{
  CORBA::ULong *retval = 0;
  ACE_NEW_RETURN (retval, CORBA::ULong[size], 0);
  return retval;
}

ACE_INLINE void CORBA::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::freebuf (CORBA::ULong *buffer)
// Free the sequence.
{
  delete [] buffer;
}

ACE_INLINE
CORBA::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq (void) // Default constructor.
{
}

ACE_INLINE
CORBA::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq (CORBA::ULong maximum) // Constructor using a maximum length value.
  : TAO_Unbounded_Base_Sequence (maximum, _TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::allocbuf (maximum))
{
}

ACE_INLINE
CORBA::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq (CORBA::ULong maximum,
  CORBA::ULong length,
  CORBA::ULong *data,
  CORBA::Boolean release)
: TAO_Unbounded_Base_Sequence (maximum, length, data, release)
{
}

ACE_INLINE
CORBA::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq (const _TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq &rhs)
// Copy constructor.
  : TAO_Unbounded_Base_Sequence (rhs)
{
  if (rhs.buffer_ != 0)
  {
    CORBA::ULong *tmp1 = _TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::allocbuf (this->maximum_);
    CORBA::ULong * const tmp2 = ACE_reinterpret_cast (CORBA::ULong * ACE_CAST_CONST, rhs.buffer_);
    
    for (CORBA::ULong i = 0; i < this->length_; ++i)
      tmp1[i] = tmp2[i];
    
    this->buffer_ = tmp1;
  }
  else
  {
    this->buffer_ = 0;
  }
}

ACE_INLINE CORBA::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq &
CORBA::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::operator= (const _TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq &rhs)
// Assignment operator.
{
  if (this == &rhs)
    return *this;
  
  if (this->release_)
  {
    if (this->maximum_ < rhs.maximum_)
    {
      // free the old buffer
      CORBA::ULong *tmp = ACE_reinterpret_cast (CORBA::ULong *, this->buffer_);
      _TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::freebuf (tmp);
      this->buffer_ = _TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::allocbuf (rhs.maximum_);
    }
  }
  else
    this->buffer_ = _TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::allocbuf (rhs.maximum_);
  
  TAO_Unbounded_Base_Sequence::operator= (rhs);
  
  CORBA::ULong *tmp1 = ACE_reinterpret_cast (CORBA::ULong *, this->buffer_);
  CORBA::ULong * const tmp2 = ACE_reinterpret_cast (CORBA::ULong * ACE_CAST_CONST, rhs.buffer_);
  
  for (CORBA::ULong i = 0; i < this->length_; ++i)
    tmp1[i] = tmp2[i];
  
  return *this;
}

// = Accessors.
ACE_INLINE CORBA::ULong &
CORBA::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::operator[] (CORBA::ULong i)
// operator []
{
  ACE_ASSERT (i < this->maximum_);
  CORBA::ULong* tmp = ACE_reinterpret_cast(CORBA::ULong*,this->buffer_);
  return tmp[i];
}

ACE_INLINE const CORBA::ULong &
CORBA::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::operator[] (CORBA::ULong i) const
// operator []
{
  ACE_ASSERT (i < this->maximum_);
  CORBA::ULong * const tmp = ACE_reinterpret_cast (CORBA::ULong* ACE_CAST_CONST, this->buffer_);
  return tmp[i];
}

// Implement the TAO_Base_Sequence methods (see Sequence.h)

ACE_INLINE CORBA::ULong *
CORBA::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::get_buffer (CORBA::Boolean orphan)
{
  CORBA::ULong *result = 0;
  if (orphan == 0)
  {
    // We retain ownership.
    if (this->buffer_ == 0)
    {
      result = _TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::allocbuf (this->length_);
      this->buffer_ = result;
      this->release_ = 1;
    }
    else
    {
      result = ACE_reinterpret_cast (CORBA::ULong*, this->buffer_);
    }
  }
  else // if (orphan == 1)
  {
    if (this->release_ != 0)
    {
      // We set the state back to default and relinquish
      // ownership.
      result = ACE_reinterpret_cast(CORBA::ULong*,this->buffer_);
      this->maximum_ = 0;
      this->length_ = 0;
      this->buffer_ = 0;
      this->release_ = 0;
    }
  }
  return result;
}

ACE_INLINE const CORBA::ULong *
CORBA::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::get_buffer (void) const
{
  return ACE_reinterpret_cast(const CORBA::ULong * ACE_CAST_CONST, this->buffer_);
}

ACE_INLINE void
CORBA::_TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::replace (CORBA::ULong max,
CORBA::ULong length,
CORBA::ULong *data,
CORBA::Boolean release)
{
  this->maximum_ = max;
  this->length_ = length;
  if (this->buffer_ && this->release_ == 1)
  {
    CORBA::ULong *tmp = ACE_reinterpret_cast(CORBA::ULong*,this->buffer_);
    _TAO_Unbounded_Sequence_CORBA_PolicyTypeSeq::freebuf (tmp);
  }
  this->buffer_ = data;
  this->release_ = release;
}

#endif /* end #if !defined */


#endif /* !TAO_USE_SEQUENCE_TEMPLATES */ 

#if !defined (_CORBA_POLICYTYPESEQ_CI_)
#define _CORBA_POLICYTYPESEQ_CI_

// *************************************************************
// Inline operations for class CORBA::PolicyTypeSeq_var
// *************************************************************

ACE_INLINE
CORBA::PolicyTypeSeq_var::PolicyTypeSeq_var (void) // default constructor
  : ptr_ (0)
{}

ACE_INLINE
CORBA::PolicyTypeSeq_var::PolicyTypeSeq_var (PolicyTypeSeq *p)
  : ptr_ (p)
{}

ACE_INLINE
CORBA::PolicyTypeSeq_var::PolicyTypeSeq_var (const ::CORBA::PolicyTypeSeq_var &p) // copy constructor
{
  if (p.ptr_)
    ACE_NEW (this->ptr_, ::CORBA::PolicyTypeSeq (*p.ptr_));
  else
    this->ptr_ = 0;
}

// fixed-size base types only
ACE_INLINE
CORBA::PolicyTypeSeq_var::PolicyTypeSeq_var (const ::CORBA::PolicyTypeSeq &p)
{
  ACE_NEW (this->ptr_, ::CORBA::PolicyTypeSeq (p));
}

ACE_INLINE
CORBA::PolicyTypeSeq_var::~PolicyTypeSeq_var (void) // destructor
{
  delete this->ptr_;
}

ACE_INLINE CORBA::PolicyTypeSeq_var &
CORBA::PolicyTypeSeq_var::operator= (PolicyTypeSeq *p)
{
  delete this->ptr_;
  this->ptr_ = p;
  return *this;
}

ACE_INLINE ::CORBA::PolicyTypeSeq_var &
CORBA::PolicyTypeSeq_var::operator= (const ::CORBA::PolicyTypeSeq_var &p)
{
  if (this != &p)
    {
      if (p.ptr_ == 0)
        {
          delete this->ptr_;
          this->ptr_ = 0;
        }
      else
        {
          PolicyTypeSeq *deep_copy =
            new PolicyTypeSeq (*p.ptr_);
          
          if (deep_copy != 0)
            {
              PolicyTypeSeq *tmp = deep_copy;
              deep_copy = this->ptr_;
              this->ptr_ = tmp;
              delete deep_copy;
            }
        }
    }
  
  return *this;
}

// fixed-size types only
ACE_INLINE ::CORBA::PolicyTypeSeq_var &
CORBA::PolicyTypeSeq_var::operator= (const ::CORBA::PolicyTypeSeq &p)
{
  if (this->ptr_ != &p)
  {
    delete this->ptr_;
    ACE_NEW_RETURN (this->ptr_, ::CORBA::PolicyTypeSeq (p), *this);
  }
  return *this;
}

ACE_INLINE const ::CORBA::PolicyTypeSeq *
CORBA::PolicyTypeSeq_var::operator-> (void) const
{
  return this->ptr_;
}

ACE_INLINE ::CORBA::PolicyTypeSeq *
CORBA::PolicyTypeSeq_var::operator-> (void)
{
  return this->ptr_;
}

ACE_INLINE 
CORBA::PolicyTypeSeq_var::operator const ::CORBA::PolicyTypeSeq &() const // cast
{
  return *this->ptr_;
}

ACE_INLINE 
CORBA::PolicyTypeSeq_var::operator ::CORBA::PolicyTypeSeq &() // cast 
{
  return *this->ptr_;
}

ACE_INLINE 
CORBA::PolicyTypeSeq_var::operator ::CORBA::PolicyTypeSeq &() const // cast 
{
  return *this->ptr_;
}

ACE_INLINE CORBA::PolicyType &
CORBA::PolicyTypeSeq_var::operator[] (CORBA::ULong index)
{
  return this->ptr_->operator[] (index);
}

ACE_INLINE const CORBA::PolicyType &
CORBA::PolicyTypeSeq_var::operator[] (CORBA::ULong index) const
{
  return ACE_const_cast (const CORBA::PolicyType &, this->ptr_->operator[] (index));
}

ACE_INLINE const ::CORBA::PolicyTypeSeq &
CORBA::PolicyTypeSeq_var::in (void) const
{
  return *this->ptr_;
}

ACE_INLINE ::CORBA::PolicyTypeSeq &
CORBA::PolicyTypeSeq_var::inout (void)
{
  return *this->ptr_;
}

// mapping for variable size 
ACE_INLINE ::CORBA::PolicyTypeSeq *&
CORBA::PolicyTypeSeq_var::out (void)
{
  delete this->ptr_;
  this->ptr_ = 0;
  return this->ptr_;
}

ACE_INLINE ::CORBA::PolicyTypeSeq *
CORBA::PolicyTypeSeq_var::_retn (void)
{
  ::CORBA::PolicyTypeSeq *tmp = this->ptr_;
  this->ptr_ = 0;
  return tmp;
}

ACE_INLINE ::CORBA::PolicyTypeSeq *
CORBA::PolicyTypeSeq_var::ptr (void) const
{
  return this->ptr_;
}

// *************************************************************
// Inline operations for class CORBA::PolicyTypeSeq_out
// *************************************************************

ACE_INLINE
CORBA::PolicyTypeSeq_out::PolicyTypeSeq_out (PolicyTypeSeq *&p)
  : ptr_ (p)
{
  this->ptr_ = 0;
}

ACE_INLINE
CORBA::PolicyTypeSeq_out::PolicyTypeSeq_out (PolicyTypeSeq_var &p) // constructor from _var
  : ptr_ (p.out ())
{
  delete this->ptr_;
  this->ptr_ = 0;
}

ACE_INLINE
CORBA::PolicyTypeSeq_out::PolicyTypeSeq_out (const ::CORBA::PolicyTypeSeq_out &p) // copy constructor
  : ptr_ (ACE_const_cast (PolicyTypeSeq_out&, p).ptr_)
{}

ACE_INLINE ::CORBA::PolicyTypeSeq_out &
CORBA::PolicyTypeSeq_out::operator= (const ::CORBA::PolicyTypeSeq_out &p)
{
  this->ptr_ = ACE_const_cast (PolicyTypeSeq_out&, p).ptr_;
  return *this;
}

ACE_INLINE ::CORBA::PolicyTypeSeq_out &
CORBA::PolicyTypeSeq_out::operator= (PolicyTypeSeq *p)
{
  this->ptr_ = p;
  return *this;
}

ACE_INLINE 
CORBA::PolicyTypeSeq_out::operator ::CORBA::PolicyTypeSeq *&() // cast
{
  return this->ptr_;
}

ACE_INLINE ::CORBA::PolicyTypeSeq *&
CORBA::PolicyTypeSeq_out::ptr (void) // ptr
{
  return this->ptr_;
}

ACE_INLINE ::CORBA::PolicyTypeSeq *
CORBA::PolicyTypeSeq_out::operator-> (void)
{
  return this->ptr_;
}

ACE_INLINE CORBA::PolicyType &
CORBA::PolicyTypeSeq_out::operator[] (CORBA::ULong index)
{
  return this->ptr_->operator[] (index);
}


#endif /* end #if !defined */

TAO_Export CORBA::Boolean operator<< (
    TAO_OutputCDR &,
    const CORBA::Policy_ptr
  );

TAO_Export CORBA::Boolean operator>> (
    TAO_InputCDR &,
    CORBA::Policy_ptr &
  );


#if !defined _TAO_CDR_OP_CORBA_PolicyList_I_
#define _TAO_CDR_OP_CORBA_PolicyList_I_

CORBA::Boolean TAO_Export operator<< (
    TAO_OutputCDR &,
    const CORBA::PolicyList &
  );
CORBA::Boolean TAO_Export operator>> (
    TAO_InputCDR &,
    CORBA::PolicyList &
  );

#endif /* _TAO_CDR_OP_CORBA_PolicyList_I_ */


#if !defined _TAO_CDR_OP_CORBA_PolicyTypeSeq_I_
#define _TAO_CDR_OP_CORBA_PolicyTypeSeq_I_

CORBA::Boolean TAO_Export operator<< (
    TAO_OutputCDR &,
    const CORBA::PolicyTypeSeq &
  );
CORBA::Boolean TAO_Export operator>> (
    TAO_InputCDR &,
    CORBA::PolicyTypeSeq &
  );

#endif /* _TAO_CDR_OP_CORBA_PolicyTypeSeq_I_ */

ACE_INLINE CORBA::Boolean operator<< (TAO_OutputCDR &strm, const CORBA::SetOverrideType &_tao_enumval)
{
  CORBA::ULong _tao_temp = _tao_enumval;
  return strm << _tao_temp;
}

ACE_INLINE CORBA::Boolean operator>> (TAO_InputCDR &strm, CORBA::SetOverrideType &_tao_enumval)
{
  CORBA::ULong _tao_temp = 0;
  CORBA::Boolean _tao_result = strm >> _tao_temp;
  
  if (_tao_result == 1)
    {
      _tao_enumval = ACE_static_cast (CORBA::SetOverrideType, _tao_temp);
    }
  
  return _tao_result;
}

