# Automates Bash Script!
###### Week 3's Assignment
* * *

#### **Assignment Requirements**
```
Write a bash script that automates the following tasks in sequence.
1)  Download the source code archive file (.tar.gz).
    https://download.geany.org/geany-1.38.tar.gz
2)  Download the Geany's public key file.
    https://download.geany.org/colombanw-pubkey.txt
3)  Download the GPG signature file.
    https://download.geany.org/geany-1.38.tar.gz.sig
    (see also: https://www.geany.org/support/verify-gpg-signature/)
4)  Verify the downloaded archive using GPG.
5)  Extract the source code file into a subdirectory.
6)  Build the source code.
    (for build instructions, see: https://www.geany.org/download/git/)
```

* * *

#### **How did I done mine** 

> Remark : I'm working on this project on VMware with UBUNTU Linux OS

1) I already make a folder "/Documents/dev_week3" for this assignment.
and start creating bash script here. Text editor I'm using NANO.

2) Start Coding, making directory for downloading resource and move to that directory.
```console
mkdir -p $HOME/Documents/dev_week3/resource && cd $HOME/Documents/dev_week3/resource/
```

3) Assign variable URL as geany site
```console
URL="https://download.geany.org"
```

4) Getting ource code archive file using wget, a tool for downloading stuff, -c is a function of wget to resume partially downloaded file.
```console
wget -c "${URL}/geany-1.38.tar.gz"
```

5) Download public key.
```console
wget -c "${URL}/colombawn-pubkey.txt"
```

6) Download GPG Signature file.
```console
wget -c "${URL}/geany-1.38.tar.gz.sig"
```

7) Verifying GPG Signature.
```console
#IMPORT KEY
gpg --import < colombanw-pubkey.txt
#For tar.gz file, use this command.
gpg --verify geany-1.34.tar.gz.sig geany-1.34.tar.gz
```

8) Extracting source code. Use tar for manage file package and -xf is a function for extract to a specific directory.
```console
tar -xf geany-1.38.tar.gz
# Resulting as an extract folder name "geany-1.38"
```

9) Building source code. Moving to the extracted folder and run the script called "autogen.sh", Then lastly the script will require make command.
```console
cd geany-1.38
./autogen.sh

make
```

* * *

#### Full week3.sh code

```console
#!/bin/bash
Blue='\033[0;34m'
Purple='\033[0;35m'

echo -e "${Blue} SW DEV. PRAC."
echo "Week3 Assignment"

sleep 1
mkdir -p $HOME/Documents/dev_week3/resource && cd $HOME/Documents/dev_week3/resource/
URL="https://download.geany.org"

echo -e "${Purple} 1) Downloading Source Code"
wget -c "${URL}/geany-1.38.tar.gz"

echo -e "${Blue} 2) Downloading Public Key"
wget -c "${URL}/colombanw-pubkey.txt"

echo -e "${Purple} 3) Downloading GPG Signature file"
wget -c "${URL}/geany-1.38.tar.gz.sig"

echo -e "${Blue} 4) Verifying GPG Signature"
gpg --import < colombanw-pubkey.txt
gpg --verify geany-1.38.tar.gz.sig geany-1.38.tar.gz

echo -e "${Purple} 5) Extracting Scource Code to Sub Folder"
sleep 1
tar -xf geany-1.38.tar.gz 

echo -e "${Blue} 6) Building Source Code"
cd geany-1.38
./autogen.sh

make

```

* * *

#### REMARKs Problem
![image](https://user-images.githubusercontent.com/109336369/184209414-47b1a24c-2c5b-4771-a913-f8ce7b93532c.png)

> In order to complete Source Code Building Process, This will require some specific package to be install.
> - intltool 
> - glib
> - libtool
> - pkg-config
> - automake
> - etc....
>
> ```console
> # UPDATE AND INSTALL I'VE DONE
> sudo apt install update
> sudo apt-get update
> sudo apt-get upgrade
> sudo apt install automake
> sudo apt install intltool
> sudo apt install libtool
> sudo apt-get install libglib2.0-dev
> sudo apt-get -y install mingw-w64 #Compiler
> sudo apt install g++
> sudo apt-get install libgtk-3-dev
> ```

