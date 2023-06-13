#include <Autocoders/Python/test/command_multi_inst/TestCommand1Impl.hpp>
#include <Autocoders/Python/test/command_multi_inst/TestCommandSourceImpl.hpp>
#include <Fw/Obj/SimpleObjRegistry.hpp>

int main(int argc, char* argv[]) {

#if FW_PORT_TRACING
    Fw::PortBase::setTrace(true);
#endif

#if FW_OBJECT_REGISTRATION == 1
    Fw::SimpleObjRegistry objReg;
#endif

	TestCommand1Impl testImpl("TestCmdImpl");
	testImpl.init(10);
	TestCommandSourceImpl cmdSrc("TestCmdSource");
	cmdSrc.init();

#if FW_OBJECT_REGISTRATION == 1
	objReg.dump();
#endif

	testImpl.set_CmdStatus_OutputPort(0,cmdSrc.get_cmdStatusPort_InputPort(0));
	testImpl.set_CmdReg_OutputPort(0,cmdSrc.get_cmdRegPort_InputPort(0));
	cmdSrc.set_cmdSendPort_OutputPort(0,testImpl.get_CmdDisp_InputPort(0));
	testImpl.regCommands();

	cmdSrc.test_TEST_CMD_1(10,25.6,5);

}
