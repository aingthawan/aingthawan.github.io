# Before Class Assignments :

> ## TO DO : Please watch these videos on Youtube and answer some questions related to the contents of the video clips.

### 1) Video: EVERYONE needs to learn LINUX - ft. Raspberry Pi 4 (~21 Min) by Chuck

<iframe width="500" height="260" src="https://www.youtube.com/embed/l9YxTXDiiFY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


#### Q1) How did Chuck (the author of the videos) introduce Linux and other computer skills to his two kids?

	- Getting his kids a Raspberry Pi 4
	- Install Raspbian OS on the SBC
	- Precessed to do a Basic HTML web server	

#### Q2) Which method(s) to learn Linux did the author explain in the video?

	- Get a Raspberry Pi Cheap SBC computer to getting start.
	- Try using Microsoft AZURE for hosting your UBUNTU Server.
	- Run Linux on your Windows OS device.
		> Enable service on PowerShell.
		> Then install Linux package directly 
		  from Microsoft Store.

#### Q3) Which Ubuntu package has the author installed on his Ubuntu machine and which system service was enabled?

	- He did installed a webserver package called Apache2
	- He enabled service called Microsoft-Windows-Subsystem-Linux
		> With this Command Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
		  On Windows PowerShell as Adminstartor

#### Q4) Which editor did he use to edit configuration files?

	- He using editor on Linux called NANO to edit his HTML index file. 


* * *

<br/><br/>

### 2) Video: You need to learn Virtual Machines RIGHT NOW!! (Kali Linux VM, Ubuntu, Windows) (~28 Min)


<iframe width="500" height="260" src="https://www.youtube.com/embed/wX75Z-4MEoM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


#### Q1) Explain the difference between Type 1 and Type2 Hypervisors.

	- They basically done the same jobs. That is create a virtual machine of an OS.
	- For Type one, Will be instlled directly on hardware and control over Type two.
	- For type two, Permission for using hardware resorce needed to be accept by Type one.

#### Q2) According to the video, explain why you should learn Virtual Machines (VMs).

	- Good for learn hacking, its more secure!
	- For try using diffrent OS.
	- For experimenting without breaking your main OS.

#### Q3) Which OS was chosen as the host OS to install and run VMs?

	- Microsoft Winodows OS

#### Q4) Which versions and which file types of Ubuntu images were downloaded for creating VMs?

	- File type for OS installation is .iso file.
	- The Ubuntu's version is 20.04.1

#### Q5) Which Hypervisor software was used to create and play with Ubuntu VMs?

	- VirtualBox

#### Q6) Which Virtual Hard Disk type and which storage allocation scheme was chosen?

	- He choose VDI (VirtualBox Disk IMage) type Virtual hard disk.
	- And storage allocation scheme is Dynamically allocation, 
	  Maybe a bit lower performance but VMs didn't need to take all 10 GB storage at onece. 

#### Q7) In addition to Ubuntu, which Linux distro was also chosen to create a VM?

	- Kali Linux 2020.4

#### Q8) Which Linux command was used to check the IP address of the Linux VM?

	- $ ip add
	- then looking for " inet " 

<br/><br/>

* * *
