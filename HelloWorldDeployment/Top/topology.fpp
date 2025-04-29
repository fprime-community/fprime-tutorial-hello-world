module HelloWorldDeployment {

  # ----------------------------------------------------------------------
  # Symbolic constants for port numbers
  # ----------------------------------------------------------------------

    enum Ports_RateGroups {
      rateGroup1
      rateGroup2
      rateGroup3
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
    instance comDriver
    instance comQueue
    instance comStub
    instance framer
    instance eventLogger
    instance fatalAdapter
    instance fatalHandler
    instance fileDownlink
    instance fileManager
    instance fileUplink
    instance bufferManager
    instance posixTime
    instance prmDb
    instance rateGroup1
    instance rateGroup2
    instance rateGroup3
    instance rateGroupDriver
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

      eventLogger.PktSend         -> comQueue.comPacketQueueIn[0]
      tlmSend.PktSend             -> comQueue.comPacketQueueIn[1]
      fileDownlink.bufferSendOut  -> comQueue.bufferQueueIn[0]
      comQueue.bufferReturnOut[0] -> fileDownlink.bufferReturn

      comQueue.queueSend   -> framer.dataIn
      framer.dataReturnOut -> comQueue.bufferReturnIn
      framer.comStatusOut  -> comQueue.comStatusIn

      framer.bufferAllocate   -> bufferManager.bufferGetCallee
      framer.bufferDeallocate -> bufferManager.bufferSendIn

      framer.dataOut        -> comStub.comDataIn
      comStub.dataReturnOut -> framer.dataReturnIn
      comStub.comStatusOut  -> framer.comStatusIn

      comStub.drvDataOut      -> comDriver.$send
      comDriver.dataReturnOut -> comStub.dataReturnIn
      comDriver.ready         -> comStub.drvConnected
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
      rateGroup3.RateGroupMemberOut[2] -> bufferManager.schedIn
    }

    connections Sequencer {
      cmdSeq.comCmdOut -> cmdDisp.seqCmdBuff
      cmdDisp.seqCmdStatus -> cmdSeq.cmdResponseIn
    }

    connections Uplink {

      comDriver.allocate -> bufferManager.bufferGetCallee
      comDriver.$recv -> comStub.drvDataIn
      comStub.comDataOut -> frameAccumulator.dataIn

      frameAccumulator.frameOut -> deframer.framedIn
      frameAccumulator.bufferDeallocate -> bufferManager.bufferSendIn
      frameAccumulator.bufferAllocate -> bufferManager.bufferGetCallee
      deframer.bufferDeallocate -> bufferManager.bufferSendIn
      deframer.deframedOut -> fprimeRouter.dataIn

      fprimeRouter.commandOut -> cmdDisp.seqCmdBuff
      fprimeRouter.fileOut -> fileUplink.bufferSendIn
      fprimeRouter.bufferDeallocate -> bufferManager.bufferSendIn

      cmdDisp.seqCmdStatus -> fprimeRouter.cmdResponseIn
      fileUplink.bufferSendOut -> bufferManager.bufferSendIn
    }

    connections HelloWorldDeployment {
      # Add here connections to user-defined components
    }

  }

}
