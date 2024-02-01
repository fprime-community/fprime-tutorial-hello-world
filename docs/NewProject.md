# Hello World: Creating an F´ Project 

This tutorial will walk new users through creating a new F´ project.

### Tutorial Steps:
- [Bootstrapping F´](#bootstrapping-f)
- [Creating a New F´ Project](#creating-a-new-f-project)
- [Building the New F´ Project](#building-the-new-f-project)
- [Conclusion](#conclusion)

## Bootstrapping F´

An F´ [project](./../README.md#project) ties to a specific version of tools to work with F´. In order to create
this project and install the correct version of tools, you should perform a bootstrap of F´.

To do this you should follow the following steps from the [F´ installation guide](https://nasa.github.io/fprime/INSTALL.html):

1. Ensure you meet the [F´ System Requirements](https://nasa.github.io/fprime/INSTALL.html#requirements)
2. [Bootstrap your F´ project](https://nasa.github.io/fprime/INSTALL.html#creating-a-new-f-project)

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

> Load the tools for this project via the virtual environment.
> 
> ```bash
> # In: MyProject
> . fprime-venv/bin/activate
>```
>
> Make sure to load these tools any time you are working with the this project.

## Building the New F´ Project

The next step is to set up and build the newly created project. This will serve as a build environment for any newly
created components, and will build the F´ framework supplied components.

```bash
cd MyProject
fprime-util generate
fprime-util build -j4
```

> `fprime-util generate` sets up the build environment for a project/deployment. It only needs to be done once.

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
