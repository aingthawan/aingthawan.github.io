[🢀 Back to Previous Page](./softwaredev_content_index.md)


# Install Linux on Windows with WSL

>## What is the Windows Subsystem for Linux [WSL] ?
>
>The Windows Subsystem for Linux lets developers run a GNU/Linux environment -- including most command-line tools, utilities, and applications -- directly on Windows, unmodified, without the overhead of a traditional virtual machine or dualboot setup.
>
><iframe width="500" height="260" src="https://www.youtube.com/embed/MrZolfGm8Zk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
>
><br/>
>
>## What is WSL 2?
>
>WSL 2 is a new version of the Windows Subsystem for Linux architecture that powers the Windows Subsystem for Linux to run ELF64 Linux binaries on Windows. Its primary goals are to increase file system performance, as well as adding full system call compatibility.
>
>[Reference : What is the Windows Subsystem for Linux?](./https://docs.microsoft.com/en-us/windows/wsl/about)

* * *

# How did I Install Ubuntu on WSL2


## Part 1 : Install WSL2

> #### Before Start
> You must be running Windows 10 version 2004 and higher (Build 19041 and higher) or Windows 11.
 
 1. Runs Windows PowerShell as administrator
 2. Run the command below to start install WSL
```
wsl --install
```
![image](https://user-images.githubusercontent.com/109336369/180995403-7f3668ae-8101-457f-b58a-bf876d6980ed.png)

3. Check version of your WSL with this command
```
wsl -l -v
```
![image](https://user-images.githubusercontent.com/109336369/180996224-56e70fb0-c665-4fb8-a9f9-6e5b4c95ea51.png)

5. To set the default version to WSL 1 or WSL 2 , Using the command below ( Replace <Version> with number of version you prefer Ex: 2 )
```
 wsl --set-default-version <Version>
```
![image](https://user-images.githubusercontent.com/109336369/180996726-8a6b092c-adcf-4ffe-a964-4102a26d386c.png)

* #### Reference :
  * [Visit for more basic command for WSL](./https://docs.microsoft.com/en-us/windows/wsl/basic-commands)
  * [Visit microsoft website for more details and reference about this part](./https://docs.microsoft.com/en-us/windows/wsl/install)

### Part 2 : Install Ubuntu on WSL ( Ubuntu 22.04 LTS )
