# Hello World: Creating an F´ Project 

This tutorial will walk new users through creating a new F´ project. First, ensure you meet the [F´ System Requirements](https://nasa.github.io/fprime/INSTALL.html#requirements).

### Tutorial Steps:
- [Bootstrapping F´](#bootstrapping-f)
- [Building the New F´ Project](#building-the-new-f-project)
- [Conclusion](#conclusion)

## Bootstrapping F´

An F´ [project](./../README.md#project) ties to a specific version of tools to work with F´. In order to create
this project and install the correct version of tools, you should perform a bootstrap of F´.

### 1. Install the F´ Bootstrap tool


The F´ Bootstrap tool is responsible for creating a new F´ project and installing the Python dependencies within the project's virtual environment. Install the fprime-bootstrap tool with:
```
pip install fprime-bootstrap
```

### 2. Create a new project

The entrypoint to developing with F´ is creating a new project. This will clone the F´ repository and install the full tool suite of the specified version for working with the selected version of F´. To create a new project, run:
```
fprime-bootstrap project
```

This command will ask for some input. Sample responses are below:
```
  [1/1] Project name (MyProject): MyProject
```

### 3. Understanding the project structure

Bootstrapping your F´ project created a folder called `MyProject` (or any name you chose) containing the standard F´ project structure as well as the virtual environment up containing the tools to work with F´.

We should navigate to the projects's directory and look around:

```bash
cd MyProject
ls
```
This will show the following files:
1. `fprime/`: F´ repository. Contains core F´ components, the API for the build system, among others
2. `settings.ini`: allows users to set various settings to control the build
3. `CMakeList.txt` and `project.cmake`: CMake files defining the build system
4. `Components/`: directory to place user components in
4. `fprime-venv/`: this directory is the virtual environment containing the Python tools to work with F´

### 4. Activate the virtual environment
Activate the virtual environment to use the F´ tool suite.

```bash
# in MyProject/
. fprime-venv/bin/activate
```
> Always remember to activate the virtual environment whenever you work with this F´  project.

## Building the New F´ Project

The next step is to set up and build the newly created project. This will serve as a build environment for any newly
created components, and will build the F´ framework supplied components.

```bash
cd MyProject
fprime-util generate
fprime-util build
```

> `fprime-util generate` sets up the build environment for a project/deployment. It only needs to be done once.

> `fprime-util build` can be sped up by building in parrallel on multiple cores, using the `-j <N>` option. For example, `fprime-util build -j16`

## Conclusion

A new project has been created with the name `MyProject` and has been placed in a new folder called `MyProject` in
the current directory. It includes the initial build system setup, and F´ version. It is still empty in that the user
will still need to create components and deployments.

For the remainder of this Hello World tutorial we should use the tools installed for our project and issue commands
within this new project's folder:

```bash
# In: MyProject
. venv/bin/activate
```
> Use this command if your virtual environment is not already running. 

**Next:** [Hello World: Creating an F´ Hello World Component](./HelloWorld.md)
