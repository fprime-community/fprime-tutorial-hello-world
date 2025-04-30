// ======================================================================
// \title  HelloWorldDeploymentTopology.cpp
// \brief cpp file containing the topology instantiation code
//
// ======================================================================
// Provides access to autocoded functions
#include <HelloWorldDeployment/Top/HelloWorldDeploymentTopologyAc.hpp>

// Necessary project-specified types
#include <Fw/Types/MallocAllocator.hpp>
#include <Svc/FramingProtocol/FprimeProtocol.hpp>
#include <Svc/FrameAccumulator/FrameDetector/FprimeFrameDetector.hpp>

// Used for 1Hz synthetic cycling
#include <Os/Mutex.hpp>

// Allows easy reference to objects in FPP/autocoder required namespaces
using namespace HelloWorldDeployment;


// The reference topology uses a malloc-based allocator for components that need to allocate memory during the
// initialization phase.
Fw::MallocAllocator mallocator;

// FprimeFrameDetector is used to configure the FrameAccumulator to detect F Prime frames
Svc::FrameDetectors::FprimeFrameDetector frameDetector;

Svc::ComQueue::QueueConfigurationTable configurationTable;

// The reference topology divides the incoming clock signal (1Hz) into sub-signals: 1Hz, 1/2Hz, and 1/4Hz
Svc::RateGroupDriver::DividerSet rateGroupDivisors = {{{1, 0}, {2, 0}, {4, 0}}};

// Rate groups may supply a context token to each of the attached children whose purpose is set by the project. The
// reference topology sets each token to zero as these contexts are unused in this project.
U32 rateGroup1Context[Svc::ActiveRateGroup::CONNECTION_COUNT_MAX] = {};
U32 rateGroup2Context[Svc::ActiveRateGroup::CONNECTION_COUNT_MAX] = {};
U32 rateGroup3Context[Svc::ActiveRateGroup::CONNECTION_COUNT_MAX] = {};

// A number of constants are needed for construction of the topology. These are specified here.
enum TopologyConstants {
    CMD_SEQ_BUFFER_SIZE = 5 * 1024,
    FILE_DOWNLINK_TIMEOUT = 1000,
    FILE_DOWNLINK_COOLDOWN = 1000,
    FILE_DOWNLINK_CYCLE_TIME = 1000,
    FILE_DOWNLINK_FILE_QUEUE_DEPTH = 10,
    HEALTH_WATCHDOG_CODE = 0x123,
    COMM_PRIORITY = 100,
    FRAMER_BUFFER_SIZE = FW_MAX(FW_COM_BUFFER_MAX_SIZE, FW_FILE_BUFFER_MAX_SIZE + sizeof(U32)) + HASH_DIGEST_LENGTH + Svc::FpFrameHeader::SIZE,
    FRAMER_BUFFER_COUNT = 30,
    DEFRAMER_BUFFER_SIZE = FW_MAX(FW_COM_BUFFER_MAX_SIZE, FW_FILE_BUFFER_MAX_SIZE + sizeof(U32)),
    DEFRAMER_BUFFER_COUNT = 30,
    COM_DRIVER_BUFFER_SIZE = 3000,
    COM_DRIVER_BUFFER_COUNT = 30,
    BUFFER_MANAGER_ID = 200
};

// Ping entries are autocoded, however; this code is not properly exported. Thus, it is copied here.
Svc::Health::PingEntry pingEntries[] = {
    {PingEntries::HelloWorldDeployment_blockDrv::WARN, PingEntries::HelloWorldDeployment_blockDrv::FATAL, "blockDrv"},
    {PingEntries::HelloWorldDeployment_tlmSend::WARN, PingEntries::HelloWorldDeployment_tlmSend::FATAL, "chanTlm"},
    {PingEntries::HelloWorldDeployment_cmdDisp::WARN, PingEntries::HelloWorldDeployment_cmdDisp::FATAL, "cmdDisp"},
    {PingEntries::HelloWorldDeployment_cmdSeq::WARN, PingEntries::HelloWorldDeployment_cmdSeq::FATAL, "cmdSeq"},
    {PingEntries::HelloWorldDeployment_eventLogger::WARN, PingEntries::HelloWorldDeployment_eventLogger::FATAL, "eventLogger"},
    {PingEntries::HelloWorldDeployment_fileDownlink::WARN, PingEntries::HelloWorldDeployment_fileDownlink::FATAL, "fileDownlink"},
    {PingEntries::HelloWorldDeployment_fileManager::WARN, PingEntries::HelloWorldDeployment_fileManager::FATAL, "fileManager"},
    {PingEntries::HelloWorldDeployment_fileUplink::WARN, PingEntries::HelloWorldDeployment_fileUplink::FATAL, "fileUplink"},
    {PingEntries::HelloWorldDeployment_prmDb::WARN, PingEntries::HelloWorldDeployment_prmDb::FATAL, "prmDb"},
    {PingEntries::HelloWorldDeployment_rateGroup1::WARN, PingEntries::HelloWorldDeployment_rateGroup1::FATAL, "rateGroup1"},
    {PingEntries::HelloWorldDeployment_rateGroup2::WARN, PingEntries::HelloWorldDeployment_rateGroup2::FATAL, "rateGroup2"},
    {PingEntries::HelloWorldDeployment_rateGroup3::WARN, PingEntries::HelloWorldDeployment_rateGroup3::FATAL, "rateGroup3"},
};

/**
 * \brief configure/setup components in project-specific way
 *
 * This is a *helper* function which configures/sets up each component requiring project specific input. This includes
 * allocating resources, passing-in arguments, etc. This function may be inlined into the topology setup function if
 * desired, but is extracted here for clarity.
 */
void configureTopology() {
    // Command sequencer needs to allocate memory to hold contents of command sequences
    cmdSeq.allocateBuffer(0, mallocator, CMD_SEQ_BUFFER_SIZE);

    // Rate group driver needs a divisor list
    rateGroupDriver.configure(rateGroupDivisors);

    // Rate groups require context arrays.
    rateGroup1.configure(rateGroup1Context, FW_NUM_ARRAY_ELEMENTS(rateGroup1Context));
    rateGroup2.configure(rateGroup2Context, FW_NUM_ARRAY_ELEMENTS(rateGroup2Context));
    rateGroup3.configure(rateGroup3Context, FW_NUM_ARRAY_ELEMENTS(rateGroup3Context));

    // File downlink requires some project-derived properties.
    fileDownlink.configure(FILE_DOWNLINK_TIMEOUT, FILE_DOWNLINK_COOLDOWN, FILE_DOWNLINK_CYCLE_TIME,
                           FILE_DOWNLINK_FILE_QUEUE_DEPTH);

    // Parameter database is configured with a database file name, and that file must be initially read.
    prmDb.configure("PrmDb.dat");
    prmDb.readParamFile();

    // Health is supplied a set of ping entires.
    health.setPingEntries(pingEntries, FW_NUM_ARRAY_ELEMENTS(pingEntries), HEALTH_WATCHDOG_CODE);

    // Buffer managers need a configured set of buckets and an allocator used to allocate memory for those buckets.
    Svc::BufferManager::BufferBins bufferMgrBins;
    memset(&bufferMgrBins, 0, sizeof(bufferMgrBins));
    bufferMgrBins.bins[0].bufferSize = FRAMER_BUFFER_SIZE;
    bufferMgrBins.bins[0].numBuffers = FRAMER_BUFFER_COUNT;
    bufferMgrBins.bins[1].bufferSize = DEFRAMER_BUFFER_SIZE;
    bufferMgrBins.bins[1].numBuffers = DEFRAMER_BUFFER_COUNT;
    bufferMgrBins.bins[2].bufferSize = COM_DRIVER_BUFFER_SIZE;
    bufferMgrBins.bins[2].numBuffers = COM_DRIVER_BUFFER_COUNT;
    bufferManager.setup(BUFFER_MANAGER_ID, 0, mallocator, bufferMgrBins);

    // FprimeFrameDetector is used to configure the FrameAccumulator to detect F Prime frames
    frameAccumulator.configure(frameDetector, 1, mallocator, 2048);

    // Note: Uncomment when using Svc:TlmPacketizer
    //tlmSend.setPacketList(HelloWorldDeploymentPacketsPkts, HelloWorldDeploymentPacketsIgnore, 1);

    // ComQueue configuration
    // Events (highest-priority)
    configurationTable.entries[0].depth = 100;
    configurationTable.entries[0].priority = 0;
    // Telemetry
    configurationTable.entries[1].depth = 500;
    configurationTable.entries[1].priority = 2;
    // File Downlink
    configurationTable.entries[2].depth = 100;
    configurationTable.entries[2].priority = 1;
    // Allocation identifier is 0 as the MallocAllocator discards it
    comQueue.configure(configurationTable, 0, mallocator);
}

// Public functions for use in main program are namespaced with deployment name HelloWorldDeployment
namespace HelloWorldDeployment {
void setupTopology(const TopologyState& state) {
    // Autocoded initialization. Function provided by autocoder.
    initComponents(state);
    // Autocoded id setup. Function provided by autocoder.
    setBaseIds();
    // Autocoded connection wiring. Function provided by autocoder.
    connectComponents();
    // Autocoded command registration. Function provided by autocoder.
    regCommands();
    // Project-specific component configuration. Function provided above. May be inlined, if desired.
    configureTopology();
    if (state.hostname != nullptr && state.port != 0) {
        comDriver.configure(state.hostname, state.port);
    }
    // Autocoded parameter loading. Function provided by autocoder.
    // loadParameters();
    // Autocoded task kick-off (active components). Function provided by autocoder.
    startTasks(state);
    // Initialize socket client communication if and only if there is a valid specification
    if (state.hostname != nullptr && state.port != 0) {
        Os::TaskString name("ReceiveTask");
        // Uplink is configured for receive so a socket task is started
        comDriver.start(name, COMM_PRIORITY, Default::STACK_SIZE);
    }
}

// Variables used for cycle simulation
Os::Mutex cycleLock;
volatile bool cycleFlag = true;

void startSimulatedCycle(U32 milliseconds) {
    cycleLock.lock();
    bool cycling = cycleFlag;
    cycleLock.unLock();

    // Main loop
    while (cycling) {
        HelloWorldDeployment::blockDrv.callIsr();
        Os::Task::delay(Fw::TimeInterval(milliseconds/1000, milliseconds % 1000));

        cycleLock.lock();
        cycling = cycleFlag;
        cycleLock.unLock();
    }
}

void stopSimulatedCycle() {
    cycleLock.lock();
    cycleFlag = false;
    cycleLock.unLock();
}

void teardownTopology(const TopologyState& state) {
    // Autocoded (active component) task clean-up. Functions provided by topology autocoder.
    stopTasks(state);
    freeThreads(state);

    // Other task clean-up.
    comDriver.stop();
    (void)comDriver.join();

    // Resource deallocation
    cmdSeq.deallocateBuffer(mallocator);
    bufferManager.cleanup();
}
};  // namespace HelloWorldDeployment
