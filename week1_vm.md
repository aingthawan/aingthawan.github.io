[⇦ Back to Previous Page](./softwaredev_content_index.md)


# Install Linux on Virtual Machine

> ## What is a Virtual Machine [VM] ?
>
> A **Virtual Machine (VM)** is a compute resource that uses software instead of a physical computer to run programs and deploy apps. One or more virtual “guest” machines run on a physical “host” machine.
>
>
> ![Windows running on macos with VM ](https://live.staticflickr.com/65535/48656062338_7959e3ff23_b.jpg)
>
>
> [Reference : VMWARE, What is a virtual machine? ](./https://www.vmware.com/topics/glossary/content/virtual-machine.html)

<br/>

* * *

# How did I install and setup my Virtual Machine

## Part 1 : Install a Virtual Machine

> **Before Start**
>
> To Install other version of VMWARE product on same machine, You must uninstall the other version you having on your machine before. 

### 1. For Virtual Machine I choose is VMWARE, Due to **VMWARE Workstation Player** allowed us to use for **FREE! (FOR NON-COMMERCIAL)** 


![image](https://user-images.githubusercontent.com/109336369/181414254-66fae416-a5ef-4ed3-88a8-54514935f515.png)

[Download VMWare Workstation](https://www.vmware.com/products/workstation-player.html)


### 2. For my machine, I'm choosing latest product (16.2.4) for **64-bit Windows OS.**

![image](https://user-images.githubusercontent.com/109336369/181414646-e4f5b978-22dc-496e-98ce-f23fba7df1a9.png)
 

### 3. Install The Software.


 ![image](https://user-images.githubusercontent.com/109336369/181420113-8e5d3502-c43b-4d18-acc1-d7901ddd0c4c.png)
 
 ![image](https://user-images.githubusercontent.com/109336369/181420134-e23c6698-8a81-467c-ae1b-66217d06a145.png)
 
 ![image](https://user-images.githubusercontent.com/109336369/181420141-06d4a919-be59-432b-9ffa-172ab920dc9c.png)
 
 ![image](https://user-images.githubusercontent.com/109336369/181420157-26e160c9-baa2-46f3-9bb0-91ad247278c3.png)
 
 ![image](https://user-images.githubusercontent.com/109336369/181420269-1252e15f-ea0c-4d49-a623-422c72427349.png)
 
 ![image](https://user-images.githubusercontent.com/109336369/181420288-29dfef72-cb32-4d0f-8cec-ce3a7853657b.png)
 
 Select The free for non-commercial use version

![image](https://user-images.githubusercontent.com/109336369/181420357-4b1b8e25-6f87-4b18-a572-a99734225a4a.png)

### 4. Now your **VMware Workstation 16 Player** ready to use

![image](https://user-images.githubusercontent.com/109336369/181420654-3c3ec675-bc58-4cbb-a218-827a48259448.png)

<br/>

* * *

## Part 2 : Create a new Virtual Machine on VMware

> ## Part 2.1 : UBUNTU
> 
> For first Virtual Machine, I'm going to use Ubuntu Linux

### 2.1.1. Download Ubuntu

Download ISO file for setup from [Download Ubuntu Desktop | Download | Ubuntu](https://ubuntu.com/download/desktop)
For me, It's Ubuntu Desktop Version 22.04 LTS

![image](https://user-images.githubusercontent.com/109336369/181437268-8640d1ba-667b-4831-bf44-615a7978900b.png)
![image](https://user-images.githubusercontent.com/109336369/181437291-27969b2f-74b3-4eb2-8a40-0a52eb8184fb.png)

### 2.1.2. Create a new Virtual Machine

On VMware, click create a new Virtual Machine and enter the location of the Ubuntu ISO file.

![image](https://user-images.githubusercontent.com/109336369/181437605-84ecc2eb-de21-447c-81be-4bd127ca9f43.png)


![image](https://user-images.githubusercontent.com/109336369/181437751-244da95c-fb74-4b69-a730-3339add44af3.png)

### 2.1.3. Setup all requirements and Settings

![image](https://user-images.githubusercontent.com/109336369/181437928-e93d9b31-430d-42ae-9f20-e82a1723f850.png)
![image](https://user-images.githubusercontent.com/109336369/181437950-48b84c42-85d2-443b-9b4a-cad8d7c603e0.png)
![image](https://user-images.githubusercontent.com/109336369/181437973-33593c0e-dba1-44db-a2a5-6f8f9c22aa31.png)
![image](https://user-images.githubusercontent.com/109336369/181437998-b201cc16-33eb-411b-8d46-7829a569a246.png)

### 2.1.4. After Installation and boot up, Setup Ubuntu on Virtual Machine.

![image](https://user-images.githubusercontent.com/109336369/181438250-68fcb924-2028-494a-bb23-340b1ef60c8b.png)
![image](https://user-images.githubusercontent.com/109336369/181438341-013d523c-76ea-4697-965b-1949dd27dc4a.png)
![image](https://user-images.githubusercontent.com/109336369/181438299-7f86633f-65e9-47ea-8a4a-3332431b9cff.png)


### 2.1.5. Finally

Your Ubuntu is ready to use!

![image](https://user-images.githubusercontent.com/109336369/181438587-769562e9-6193-4f37-800f-055858ebfb49.png)
![image](https://user-images.githubusercontent.com/109336369/181438622-faca7ff5-8b81-4958-b9f2-fe56036d4378.png)
![image](https://user-images.githubusercontent.com/109336369/181438659-e53d2411-ee62-4410-bc64-5e268ddf5705.png)


<br/><br/>



> ## Part 2.2 : KALI
>
> For my second choice on Linux distribution is Kali.

### 2.2.1. Download Kali Linux for VMware from [Get Kali](https://www.kali.org/get-kali/#kali-platforms)

![image](https://user-images.githubusercontent.com/109336369/181450959-e920b24c-d59f-4d4d-bd1b-0f754162fbec.png)


### 2.2.2 Extract the downloaded folder

![image](https://user-images.githubusercontent.com/109336369/181451191-73104f59-19d4-4317-adb0-633e7321a518.png)

![image](https://user-images.githubusercontent.com/109336369/181451219-efab09bb-631c-41f1-b200-0f628325547e.png)


### 2.2.3 On VMware, Open a Virtual Machine and open VMX file in extracted folder.

![image](https://user-images.githubusercontent.com/109336369/181451870-f585b549-00e2-47f3-8a54-6cb08da3c181.png)

![image](https://user-images.githubusercontent.com/109336369/181451895-16327b8c-c463-4945-8304-e8b460b930b0.png)

![image](https://user-images.githubusercontent.com/109336369/181451925-275da57c-3006-4144-8628-98a9db95ec62.png)

Waiting for setting up.

![image](https://user-images.githubusercontent.com/109336369/181452004-828aed8c-0a4e-48e1-bd28-2bb1e952f404.png)

![image](https://user-images.githubusercontent.com/109336369/181452043-cbfa2d33-8847-4b1c-8b20-19c85fe5d13b.png)

> **Login with**
> 
> ID : kali
> 
> Password : kali

### 2.2.4. Finish!, Your Kali Linux is Ready!

![image](https://user-images.githubusercontent.com/109336369/181452345-0ae944e7-f9a1-465e-8a05-90efbe3b755b.png)


[Reference, How to install Kali Linux on VMware 2022 (Very Easy)](https://youtu.be/pwYH0NNWWzU)

<br/>

----


[⇦ Back to Previous Page](./softwaredev_content_index.md)
