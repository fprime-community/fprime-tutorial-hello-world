// ======================================================================
// \title  HelloWorld.cpp
// \author asloan
// \brief  cpp file for HelloWorld component implementation class
// ======================================================================


#include <Components/HelloWorld/HelloWorld.hpp>
#include <FpConfig.hpp>

namespace Components {

  // ----------------------------------------------------------------------
  // Construction, initialization, and destruction
  // ----------------------------------------------------------------------

  HelloWorld:: HelloWorld(const char *const compName) : 
    HelloWorldComponentBase(compName),
    m_greetingCount(0)
  {

  }

  HelloWorld ::
    ~HelloWorld()
  {

  }

  // ----------------------------------------------------------------------
  // Command handler implementations
  // ----------------------------------------------------------------------

  void HelloWorld ::
    SAY_HELLO_cmdHandler(
        const FwOpcodeType opCode,
        const U32 cmdSeq,
        const Fw::CmdStringArg& greeting
    )
  {
    // Copy the command string input into an event string for the Hello event
    Fw::LogStringArg eventGreeting(greeting.toChar());
    // Emit the Hello event with the copied string
    this->log_ACTIVITY_HI_Hello(eventGreeting);
    
    this->tlmWrite_GreetingCount(++this->m_greetingCount);
    
    // Tell the fprime command system that we have completed the processing of the supplied command with OK status
    this->cmdResponse_out(opCode, cmdSeq, Fw::CmdResponse::OK);
  }

} // end namespace Components
