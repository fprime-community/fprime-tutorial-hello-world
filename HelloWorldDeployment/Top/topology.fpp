module HelloWorldDeployment {

  # ----------------------------------------------------------------------
  # Symbolic constants for port numbers
  # ----------------------------------------------------------------------

    enum Ports_RateGroups {
      rateGroup1
      rateGroup2
      rateGroup3
    }

    enum Ports_StaticMemory {
      framer
    }

  topology HelloWorldDeployment {

    # ----------------------------------------------------------------------
    # Instances used in the topology
    # ----------------------------------------------------------------------

    instance $health
    instance blockDrv
    instance tlmSend
    instance cmdDisp
    instance cmdSeq
    instance comm
    instance framer
    instance eventLogger
    instance fatalAdapter
    instance fatalHandler
    instance fileDownlink
    instance fileManager
    instance fileUplink
    instance uplinkBufferManager
    instance posixTime
    instance prmDb
    instance rateGroup1
    instance rateGroup2
    instance rateGroup3
    instance rateGroupDriver
    instance staticMemory
    instance textLogger
    instance deframer
    instance systemResources
    instance frameAccumulator
    instance fprimeRouter

    instance helloWorld

    # ----------------------------------------------------------------------
    # Pattern graph specifiers
    # ----------------------------------------------------------------------

    command connections instance cmdDisp

    event connections instance eventLogger

    param connections instance prmDb

    telemetry connections instance tlmSend

    text event connections instance textLogger

    time connections instance posixTime

    health connections instance $health

    # ----------------------------------------------------------------------
    # Direct graph specifiers
    # ----------------------------------------------------------------------

    connections Downlink {

      tlmSend.PktSend -> framer.comIn
      eventLogger.PktSend -> framer.comIn
      fileDownlink.bufferSendOut -> framer.bufferIn

      framer.framedAllocate -> staticMemory.bufferAllocate[Ports_StaticMemory.framer]
      framer.framedOut -> comm.$send
      framer.bufferDeallocate -> fileDownlink.bufferReturn

      comm.deallocate -> staticMemory.bufferDeallocate[Ports_StaticMemory.framer]

    }

    connections FaultProtection {
      eventLogger.FatalAnnounce -> fatalHandler.FatalReceive
    }

    connections RateGroups {
      # Block driver
      blockDrv.CycleOut -> rateGroupDriver.CycleIn

      # Rate group 1
      rateGroupDriver.CycleOut[Ports_RateGroups.rateGroup1] -> rateGroup1.CycleIn
      rateGroup1.RateGroupMemberOut[0] -> tlmSend.Run
      rateGroup1.RateGroupMemberOut[1] -> fileDownlink.Run
      rateGroup1.RateGroupMemberOut[2] -> systemResources.run

      # Rate group 2
      rateGroupDriver.CycleOut[Ports_RateGroups.rateGroup2] -> rateGroup2.CycleIn
      rateGroup2.RateGroupMemberOut[0] -> cmdSeq.schedIn

      # Rate group 3
      rateGroupDriver.CycleOut[Ports_RateGroups.rateGroup3] -> rateGroup3.CycleIn
      rateGroup3.RateGroupMemberOut[0] -> $health.Run
      rateGroup3.RateGroupMemberOut[1] -> blockDrv.Sched
      rateGroup3.RateGroupMemberOut[2] -> uplinkBufferManager.schedIn
    }

    connections Sequencer {
      cmdSeq.comCmdOut -> cmdDisp.seqCmdBuff
      cmdDisp.seqCmdStatus -> cmdSeq.cmdResponseIn
    }

    connections Uplink {

      comm.allocate -> uplinkBufferManager.bufferGetCallee
      comm.$recv -> frameAccumulator.dataIn

      frameAccumulator.frameOut -> deframer.framedIn
      frameAccumulator.bufferDeallocate -> uplinkBufferManager.bufferSendIn
      frameAccumulator.bufferAllocate -> uplinkBufferManager.bufferGetCallee
      deframer.bufferDeallocate -> uplinkBufferManager.bufferSendIn
      deframer.deframedOut -> fprimeRouter.dataIn

      fprimeRouter.commandOut -> cmdDisp.seqCmdBuff
      fprimeRouter.fileOut -> fileUplink.bufferSendIn
      fprimeRouter.bufferDeallocate -> uplinkBufferManager.bufferSendIn

      cmdDisp.seqCmdStatus -> fprimeRouter.cmdResponseIn

      fileUplink.bufferSendOut -> uplinkBufferManager.bufferSendIn
    }

    connections HelloWorldDeployment {
      # Add here connections to user-defined components
    }

  }

}
