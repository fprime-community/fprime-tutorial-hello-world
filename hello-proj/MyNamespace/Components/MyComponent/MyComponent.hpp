// ======================================================================
// \title  MyComponent.hpp
// \author djbyrne
// \brief  hpp file for MyComponent component implementation class
// ======================================================================

#ifndef MyNamespace_MyComponent_HPP
#define MyNamespace_MyComponent_HPP

#include "MyNamespace/Components/MyComponent/MyComponentComponentAc.hpp"

namespace MyNamespace {

class MyComponent final : public MyComponentComponentBase {
  public:
    // ----------------------------------------------------------------------
    // Component construction and destruction
    // ----------------------------------------------------------------------

    //! Construct MyComponent object
    MyComponent(const char* const compName  //!< The component name
    );

    //! Destroy MyComponent object
    ~MyComponent();

  private:
    U32 m_greetingCount = 0;

  private:
    // ----------------------------------------------------------------------
    // Handler implementations for commands
    // ----------------------------------------------------------------------

    //! Handler implementation for command SAY_HI
    //!
    //! TODO
    //! Command to issue greeting with maximum length of 20 characters
    void SAY_HI_cmdHandler(FwOpcodeType opCode,              //!< The opcode
                           U32 cmdSeq,                       //!< The command sequence number
                           const Fw::CmdStringArg& greeting  //!< Greeting to repeat in the MyEventSayHi event
                           ) override;
};

}  // namespace MyNamespace

#endif
