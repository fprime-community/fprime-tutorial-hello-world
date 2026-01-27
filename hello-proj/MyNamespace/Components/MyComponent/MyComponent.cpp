// ======================================================================
// \title  MyComponent.cpp
// \author djbyrne
// \brief  cpp file for MyComponent component implementation class
// ======================================================================

#include "MyNamespace/Components/MyComponent/MyComponent.hpp"

namespace MyNamespace {

// ----------------------------------------------------------------------
// Component construction and destruction
// ----------------------------------------------------------------------

MyComponent ::MyComponent(const char* const compName) : MyComponentComponentBase(compName) {}

MyComponent ::~MyComponent() {}

// ----------------------------------------------------------------------
// Handler implementations for commands
// ----------------------------------------------------------------------

void MyComponent ::SAY_HI_cmdHandler(FwOpcodeType opCode, U32 cmdSeq, const Fw::CmdStringArg& greeting) {
    // Copy the command string input into an event string for the MyEventSayHi event
    Fw::LogStringArg eventGreeting(greeting.toChar());
    // Emit the MyEventSayHi event with the copied string
    this->log_ACTIVITY_HI_MyEventSayHi(eventGreeting);

    this->tlmWrite_GreetingCount(++this->m_greetingCount);

    // Tell the fprime command system that we have completed the processing of the supplied command with OK status
    this->cmdResponse_out(opCode, cmdSeq, Fw::CmdResponse::OK);
}

}  // namespace MyNamespace
