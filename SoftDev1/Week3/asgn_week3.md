### Assignment Week 3
# Automates Bash Script!

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

1) I already make a folder "/Documents/sigsys_week3" for this assignment.
and start creating bash script here. Text editor I'm using NANO.

2) Start Coding, making directory for downloading resource and move to that directory.
```console
mkdir -p $HOME/Documents/sigsys_week3/resource && cd $HOME/Documents/sigsys_week3/resource/
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

