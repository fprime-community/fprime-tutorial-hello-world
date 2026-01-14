---
permalink: /
---

# Hello World Tutorial

## Introduction and F´ Terminology

The Hello World tutorial is designed to teach new users the basics of F´ usage, instruct existing users on new commands that help in F´ development, and act as the canonical "Hello World" example for F´.


> [!TIP]
> The source for this tutorial is located here: [https://github.com/fprime-community/fprime-tutorial-hello-world](https://github.com/fprime-community/fprime-tutorial-hello-world). If you are stuck at some point during the tutorial, you may refer to that reference as the "solution".


### F´ Terminology

F´ uses specific terminology to refer to specific parts of the system. This section dives into the basic F´ terminology used in this tutorial and an explanation of how the terminology is used.

#### Project

An F´ project is a collection of files and folders used to work with F´. At its core, a project is just a folder that can be used to hold F´ code. Projects should specifically exclude the core F´ library to avoid the "clone and own" problem. Rather projects should link-to a version of F´.

This tutorial will create a new `hello-proj` project used to contain the other things created by the tutorial.

#### Component

An F´ component encapsulates a unit of system behavior. Components define commands, events, telemetry channels, and parameters, and use ports to communicate with other components.

This tutorial will create a new `MyComponent` component that defines a `SAY_HI` command, `MyEventSayHi` event, and `GreetingCount` telemetry channel. The component only uses built-in ports. It does not use custom ports nor parameters.

#### Port

A port is an interface used to communicate between components. This tutorial only uses built-in ports.

#### Command

Commands represent actions that a component can execute. Commands can be sent from the ground or via command sequences. Command behavior is defined in a command handler defined in the component's implementation.

This tutorial defines one command `SAY_HI` with a single argument `greeting`. This command will be sent via the ground system and will echo the greeting back via the `MyEventSayHi` event.

#### Event

Events represent actions that a component has performed. Events are akin to software log messages. Events are received and displayed by the ground system.

This tutorial defines one event `MyEventSayHi` emitted in response to the `SAY_HI` command and containing the same greeting that the command had.

#### Telemetry Channel

Telemetry channels provide the active state of the component. Each channel represents a single item of state that will be sent to the ground system.

This tutorial defines a single channel `GreetingCount` that contains the count of the number of `SAY_HI` greeting commands received.

#### Topology

Topologies are networks of connected components that define the software. Multiple instances of a component may be added to the topology.

This tutorial will use a standard command and data handling topology. A single `MyComponent` component instance called `myCmpntInstance` will be added to the standard topology.

>[!NOTE] For more information on F Prime Terminology, we recommend looking through our [Documentation](https://fprime.jpl.nasa.gov/latest/docs/user-manual/overview/03-port-comp-top/)

#### Deployment

Deployments are a single build of F´ software. Each deployment results in one software executable that can be run along with other associated files. Each deployment has a topology that defines the system.

This tutorial will create the `FirstDeployment` deployment, run this deployment, and test it through the F´ GDS (Ground Data System).

---
## Troubleshooting
If at any point during this tutorial you encounter issues:

A. **Check your current directory**: Ensure you are in the correct directory as specified in each step of the tutorial
B. **Activate your virtual environment**: Always make sure your F´ project's virtual environment is activated with `source hello-proj/fprime-venv/bin/activate`
C. **Refer to the F´ troubleshooting guide**: Visit [F´ Installation and Troubleshooting](https://fprime.jpl.nasa.gov/latest/docs/getting-started/installing-fprime/#troubleshooting) for common installation and setup issues
D. **Verify your F´ installation**: Run `fprime-util --help` to ensure F´ tools are properly installed
E. **Check build errors**: If you encounter build errors, ensure all previous steps were completed successfully
F. **Refer to the utility help text**: For example, run `fprime-util generate --help` or `fprime-util build --help`



---



## 1. Creating an F´ Project

This section will walk you through creating a new F´ project. First, ensure you meet the [F´ System Requirements](https://github.com/nasa/fprime?tab=readme-ov-file#system-requirements).


### 1a. Install the F´ Bootstrap tool

An F´ [project](#f-terminology) ties to a specific version of tools to work with F´. The F´ Bootstrap tool is responsible for creating a new F´ project and installing the Python dependencies within the project's virtual environment.

Install the fprime-bootstrap tool with:
```
pip install fprime-bootstrap
```

> [!NOTE]
> `pip` needs to be version 3.6 or higher, or you can use `pipx`


### 1b. Create a new project repository

The entrypoint to developing with F´ is creating a new project. This will clone the F´ repository and install the full tool suite of the specified version for working with the selected version of F´. To create this new project, run:
```
fprime-bootstrap project
```

This command will ask for project information and suggest defaults. We will override the defaults with the following:
```
Project repository name [my-fprime-project]: hello-proj
Project top-level namespace [HelloProj]: MyNamespace
```


### 1c. Understand the project structure

Bootstrapping your F´ project created a folder called `hello-proj` (or any name you chose) containing the standard F´ project structure as well as the [virtual environment](https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments/) containing the tools to work with F´.

We should navigate to the project's directory and look around:

```bash
cd hello-proj
ls
```

This will show the following files:
- `CMakeList.txt` and `CMakePresets.json`: CMake files defining the build system
- `fprime-venv/`: this folder is the virtual environment containing the Python tools to work with F´
- `lib/`: Library folder, holding libraries the project will use. This is also where the `fprime` code lives, as a git submodule that points to https://github.com/nasa/fprime. Contains core F´ components, the API for the build system, among others
- `MyNamespace/`: top-level source folder for the project. This is where you will create components, deployments, and other project-specific code.
- `README.md` where you can document work on this project.
- `requirements.txt`: List of Python packages needed for this project
- `settings.ini`: allows users to modify various settings that control the build


### 1d. Activate the virtual environment
Activate the virtual environment to use the F´ tool suite.

```bash
# in hello-proj/
source fprime-venv/bin/activate
```
> [!TIP]
> Always remember to activate the virtual environment whenever you work with this F´  project.


### 1e. Generate the Build Cache Directory
The next step is to set up a build cache directory for the newly created project. This will serve as a build environment compiled code, libraries, and linked executables.

```bash
# in hello-proj/
fprime-util generate
ls
```

You should see one new directory, `build-fprime-automatic-native`

> [!NOTE]
> `fprime-util generate` normally only needs to be done once, or after wiping out the cache directory with `fprime-util purge`.


### 1f. Build the New F´ Project

Now, build the newly created project. This will build the F´ framework supplied components.

```bash
# in hello-proj/
fprime-util build
```



### Project Creation Recap

A new project has been created which includes the initial build system setup, and F´ source code. It is still empty in that the user will still need to create components and deployments.

For the remainder of this tutorial we will use the tools installed for our project and issue commands within this new project's virtual environment, per the `activate` command given above.



---



## 2. Creating an F´ Component

This section will walk new users through creating a basic F´ component. Remember that you need a shell that has activated the virtual environment above.

F´ components encapsulate the various parts of system behavior. These components can interact with the ground system through [commands](#command), [events](#event), and [telemetry channels](#telemetry-channel). Components communicate with other components through [ports](#port), which are covered in-depth in the [MathComponent tutorial](https://github.com/fprime-community/fprime-tutorial-math-component).


### 2a. Component Requirements

The first step for creating a new component is understanding what it is that we wish to implement. This is called defining requirements. In the spirit of "Hello World" this component will encapsulate greeting behavior. The component will define three items to implement greeting behaviour:

- A [command](#command) called `SAY_HI` that will command the component to send a greeting
- An [event](#event) called `MyEventSayHi` that is the greeting sent in response to the `SAY_HI` command
- A [telemetry channel](#telemetry-channel) called `GreetingCount` that will count each `MyEventSayHi` event sent

These are a simple set of requirements for this component.


### 2b. Create the Component

The next step is to create the new component. The project contains a `Components/` directory to create components in. Change to that directory and issue the following command:

```bash
# In: hello-proj
cd MyNamespace/Components
fprime-util new --component
```

This command will ask for some input. You should respond with the following answers (you can just hit `<ENTER>` to accept the offered defaults:

```
[INFO] Cookiecutter source: using builtin
  [1/8] Component name (MyComponent): MyComponent
  [2/8] Component short description (Component for F Prime FSW framework.): Hello World Tutorial Component
  [3/8] Component namespace (MyNamespace): Components
  [4/8] Select component kind
    1 - active
    2 - passive
    3 - queued
    Choose from [1/2/3] (1):
  [5/8] Enable Commands?
    1 - yes
    2 - no
    Choose from [1/2] (1):
  [6/8] Enable Telemetry?
    1 - yes
    2 - no
    Choose from [1/2] (1):
  [7/8] Enable Events?
    1 - yes
    2 - no
    Choose from [1/2] (1):
  [8/8] Enable Parameters?
    1 - yes
    2 - no
    Choose from [1/2] (1):
[INFO] Found CMake file at 'hello-proj/MyNamespace/Components/CMakeLists.txt'
Add MyComponent to hello-proj/MyNamespace/Components/CMakeLists.txt at end of file? (yes/no) [yes]:
Generate implementation files? (yes/no) [yes]:
Refreshing cache and generating implementation files...
[0/1] Re-running CMake...
...
```

This new component will be able to define commands, events, telemetry channels, and parameters.

We should navigate to the component's directory and look around:

```bash
# In: hello-proj/MyNamespace/Components
cd MyComponent
ls
```

This will show the following files, which you will edit shortly:
- `CMakeList.txt`: build definitions for the component.
- `docs` folder to place component documentation
- `MyComponent.fpp`: design model for the component
- `MyComponent.cpp` and `MyComponent.hpp`: C++ implementation files for the component.


### 2c. Build this component
```bash
# In: hello-proj/MyNamespace/Components/MyComponent
fprime-util build
...
Linking CXX static library lib/Darwin/libMyNamespace_Components_MyComponent.a
```

> [!NOTE]
> Any component in F´ can be built by navigating to the component's folder and running `fprime-util build`. Build products such as libraries go under the project build directory `hello-proj/build-fprime-automatic-native/`


### 2d. Implement the Component Model

A component model defines the interface of the component with the rest of the F´ system and with the ground system F´ communicates with.

Recall that in defining the requirements above, we specified
- Command `SAY_HI`
- Event `MyEventSayHi`
- Telemetry channel `GreetingCount`


**Edit the Model**

In the file `MyComponent.fpp` replace the line:

```
async command TODO opcode 0
```

with the following:

```
@ Command to issue greeting with maximum length of 20 characters
async command SAY_HI(
    greeting: string size 20 @< Greeting to repeat in the MyEventSayHi event
)

@ Greeting event with maximum greeting length of 20 characters
event MyEventSayHi(
    greeting: string size 20 @< Greeting supplied from the SAY_HI command
) severity activity high format "I say: {}"

@ A count of the number of greetings issued
telemetry GreetingCount: U32
```

> [!NOTE]
> You should ensure to replace any existing command, event, and channel definitions with those supplied above but leave the 'Standard AC Ports' section untouched.


**Implement the Model**

Generate a template implementation with the following command:

```bash
# In: hello-proj/MyNamespace/Components/MyComponent
fprime-util impl
[0/1] Re-running CMake...
...
Formatting [1/2] hello-proj/MyNamespace/Components/MyComponent/MyComponent.template.cpp
Formatting [2/2] hello-proj/MyNamespace/Components/MyComponent/MyComponent.template.hpp
```

That created the following files which contain empty functions based on what we have edited into the FPP file above:
- `MyComponent.template.cpp`
- `MyComponent.template.hpp`


While normally one would merge new templates with the existing code, we will instead overwrite the existing implementations as we have not edited them yet. To do this:

```bash
mv MyComponent.template.cpp MyComponent.cpp
mv MyComponent.template.hpp MyComponent.hpp
```


### 2e. Implement Component Behavior

F´ behavior is implemented with two kinds of handlers:
- Command handler functions
- Port handler functions (as described in the next tutorial, [`LED Blinker`](https://github.com/fprime-community/fprime-workshop-led-blinker)).

**`MyComponent.cpp`: Define Command Handler**

The generated template `MyComponent.cpp` file has a mostly-empty `SAY_HI_cmdHandler` function. Ensure its contents look like:

```c++
void MyComponent ::SAY_HI_cmdHandler(FwOpcodeType opCode, U32 cmdSeq, const Fw::CmdStringArg& greeting) {
    // Copy the command string input into an event string for the MyEventSayHi event
    Fw::LogStringArg eventGreeting(greeting.toChar());
    // Emit the MyEventSayHi event with the copied string
    this->log_ACTIVITY_HI_MyEventSayHi(eventGreeting);

    this->tlmWrite_GreetingCount(++this->m_greetingCount);

    // Tell the fprime command system that we have completed the processing of the supplied command with OK status
    this->cmdResponse_out(opCode, cmdSeq, Fw::CmdResponse::OK);
}
```


**`MyComponent.hpp`: Declare Counting Variable**

Add the m_greetingCount member variable to the class defined in `MyComponent.hpp` and the constructor defined in `MyComponent.cpp`. This is done by adding the following code inside the `class` definition in `MyComponent.hpp`:

```c++
private:
    U32 m_greetingCount = 0;
```


### 2f. Rebuild your component
The component should build without errors using the same command as before your edits. Remember to always save before you build; unsaved changes will not be included in the build.
```bash
# In: hello-proj/MyNamespace/Components/MyComponent
fprime-util build
...
Linking CXX static library lib/Darwin/libMyNamespace_Components_MyComponent.a
```

Resolve any errors that occur before proceeding to the next section.



---



## 3. Integrating into a Deployment

This section will walk new users through creating a new F´ [deployment](#deployment). This deployment will build a [topology](#topology) containing the standard F´ stack of components and a single `MyComponent` component instance.


### 3a. Create A New Deployment

F´ deployments represent one flight software executable. All the components we develop for F´ run within a deployment. The deployment created here will contain the standard command and data handling stack. This stack enables ground control and data collection.

To create a deployment, `cd` into the `MyNamespace` directory (this is the top-level namespace where project code should reside) and run the following command. It will ask for some input. Respond with the answers shown. For all further questions, select the default response by hitting `<ENTER>`
```bash
# In: hello-proj/MyNamespace/
fprime-util new --deployment
  [1/3] Deployment name (MyDeployment): FirstDeployment
  [2/3] Deployment namespace (MyNamespace):
...
[INFO] New deployment successfully created: hello-proj/MyNamespace/FirstDeployment

```

At this point, the `FirstDeployment` has been created, but our `MyComponent` component has not been added to the deployment.


### 3b. Add an Instance of MyComponent to FirstDeployment

Topologies instantiate all the components in a running system and link them together. For some port types, like the commanding, event, and telemetry ports used by `MyComponent`, the connections are made automatically. In addition, the topology specifies how to construct the component instance. This is also done automatically unless the component has specific configuration.


In order to add a component to the topology, the topology model must be updated by adding both:
- An instance definition
- An instance initializer


**Add instance definition to the model**

Edit `hello-proj/MyNamespace/FirstDeployment/Top/topology.fpp` to add `instance myCmpntInstance` as shown. This is a one-line addition to the FPP file.
```
...
  topology FirstDeployment {
    ...
    # ----------------------------------------------------------------------
    # Instances used in the topology
    # ----------------------------------------------------------------------

    instance ...
    instance ...
    instance myCmpntInstance
```

> [!WARNING]
> `...` are placeholders for other component names - do not remove or modify any other instances from the list.

`myCmpntInstance` is the name of the component instance. Like variable names, component instance names should be descriptive and are typically named in camel or snake case.

> [!TIP]
> Reference the [F Prime Style Guidelines](https://github.com/nasa/fprime/wiki/F%C2%B4-Style-Guidelines) for more


**Add instance initializer to the model**

Since the `MyComponent` component is an `active` component it should be added to the active components section and should define a priority and queue depth options.

Edit `hello-proj/MyNamespace/FirstDeployment/Top/instances.fpp` to add `instance myCmpntInstance` as shown. This is a four-line addition to the FPP file.
```
  # ----------------------------------------------------------------------
  # Active component instances
  # ----------------------------------------------------------------------

  instance myCmpntInstance: Components.MyComponent base id 0x10005000 \
    queue size Default.QUEUE_SIZE \
    stack size Default.STACK_SIZE \
    priority 50
```

> [!NOTE]
> The user must ensure that the base id (0x10005000) does not conflict with any other base ids in the topology. 0x10005000 should be safe for deployments created with `fprime-util new --deployment`.

> [!NOTE]
> Make sure to use the same instance name (i.e. myCmpntInstance) in both `topology.fpp` and `instances.fpp`.


### 3c. Build FirstDeployment
Since this component has no custom ports nor does it require special configuration, our addition to the topology is completed. The deployment can now be set up and built using the following commands:

```
cd ..
# In: hello-proj/MyNamespace/FirstDeployment
fprime-util build
...
Linking CXX static library lib...n/libMyNamespace_FirstDeployment_Top.a
```

> [!WARNING]
> Resolve any errors that occur before continuing to the running section.



## 4. Testing With `fprime-gds`

It is now time to test the `MyComponent` component by running the deployment. This can be accomplished by running the `fprime-gds` command in the deployment, verifying connection, sending the new SAY_HI command and verifying that the `MyEventSayHi` event and `GreetingCount` channel appears.

To start the deployment with default settings, run:
```bash
# In: hello-proj/MyNamespace/FirstDeployment
fprime-gds
```

The F´ GDS control page should open up in your web browser. If it does not open up, navigate to `http://127.0.0.1:5000`.

Once the F´ GDS page is visible, look for a green circle icon in the upper right corner. This shows that the flight software deployment has connected to the GDS system. If a red X appears instead, navigate to the Logs tab and look for errors in the various logs.

Now that communication is verified, navigate to the "Channels" tab and see some values updating.

Navigate to the "Commanding" tab and select `MyNamespace.myCmpntInstance.SAY_HI` from the dropdown list. Type a greeting into the argument input box and click the button "Send Command". If the argument has validated successfully the command will send. Resolve all errors and ensure the command has sent.

> [!NOTE]
> Commands are instance specific. Had several MyComponent component instances been used, there would be multiple `SAY_HI` listings, one for each component instance.

Now that the command has sent, navigate to the "Events" tab. Ensure that the event list contains the MyEventSayHi event with the text entered when sending the command.

Lastly, navigate to the "Channels" tab. Look for "MyNamespace.myCmpntInstance.GreetingCount" in the channel list. Ensure it has recorded the number of times a `myCmpntInstance.SAY_HI` was sent.


**Shutdown**

In the terminal window where you ran `fprime-gds`, kill the running application and deactivate the virtual environment

```bash
CTRL-C
deactivate
```



---



## 5. Conclusion

Congratulations, you have now set up a project, component, and deployment in F´, and run the Flight Software application as well as controlled it through the F´ GDS!



---



## 6. More to explore

If you feel inclinded, consider defining and implementing additional requirements, and exploring how multiple deployments can mix and match components.

For example,
- Add a new instance of `MyComponent` to `FirstDeployment`, named `myOtherCmpntInstance`
  - Test with `fprime-gds` by repeatedly issuing both SAY_HI commands
  - Look for their separate `GreetingCount` telemetry channels incrementing only with their respective instances
- Add a new command `INTRODUCE_ME` within `MyComponent`, that creates a new event `MyEventIntro` with string "Nice to meet you, %s.\n" but does not increment m_greetingCount.
  - Remember to rebuild both `MyComponent` and `FirstDeployment`
  - Test with `fprime-gds` by repeatedly issuing both SAY_HI and INTRODUCE_ME
  - Look for their events each time
  - See that the `GreetingCount` telemetry channel only increments on SAY_HI and not INTRODUCE_ME.
- Add a new component `YourComponent` to `FirstDeployment`
  - With command SAY_HOLA that creates a new event `HolaEvent`
  - Test with `fprime-gds` by repeatedly each of SAY_HI, INTRODUCE_ME, and SAY_HOLA
- Add a new deployment `SecondDeployment` with `YourComponent` but not `MyComponent`
  - Test with `fprime-gds` noticing that SAY_HOLA still works, but neither SAY_HI nor INTRODUCE_ME is listed as a command
