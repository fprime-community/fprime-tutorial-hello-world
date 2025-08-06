// ======================================================================
// \title  HelloWorld.hpp
// \author borjigin
// \brief  hpp file for HelloWorld component implementation class
// ======================================================================

#ifndef Components_HelloWorld_HPP
#define Components_HelloWorld_HPP

#include "Components/HelloWorld/HelloWorldComponentAc.hpp"

namespace Components {

class HelloWorld final : public HelloWorldComponentBase {
  public:
    // ----------------------------------------------------------------------
    // Component construction and destruction
    // ----------------------------------------------------------------------

    //! Construct HelloWorld object
    HelloWorld(const char* const compName  //!< The component name
    );

    //! Destroy HelloWorld object
    ~HelloWorld();

  private:
    // ----------------------------------------------------------------------
    // Handler implementations for commands
    // ----------------------------------------------------------------------

    //! Handler implementation for command SAY_HELLO
    //!
    //! Command to issue greeting with maximum length of 20 characters
    void SAY_HELLO_cmdHandler(FwOpcodeType opCode,              //!< The opcode
                              U32 cmdSeq,                       //!< The command sequence number
                              const Fw::CmdStringArg& greeting  //!< Greeting to repeat in the Hello event
                              ) override;
    
  private:
    U32 m_greetingCount = 0;
  
};

}  // namespace Components

#endif
