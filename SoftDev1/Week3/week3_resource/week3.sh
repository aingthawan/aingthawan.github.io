#!/bin/bash
Blue='\033[0;34m'
Purple='\033[0;35m'

echo -e "${Blue} SW DEV. PRAC."
echo "Week3 Assignment"

sleep 1
mkdir -p $HOME/Documents/sigsys_week3/resource && cd $HOME/Documents/sigsys_week3/resource/
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
#mkdir -p $HOME/Documents/sigsys_week3/resource/extract
#tar -xf geany-1.38.tar.gz -C $HOME/Documents/sigsys_week3/resource/extract/
tar -xf geany-1.38.tar.gz 

echo -e "${Blue} 6) Building Source Code"
cd geany-1.38
./autogen.sh

make
