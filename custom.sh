#!/bin/bash

clear

echo '#######################################################################'
echo '#                       Web pentesting Setup                          #'
echo '#######################################################################'
echo

echo '#######################################################################'
echo '#           GREAT POWER COMES WITH GREAT RESPONSIBILITY!              #'
echo '#######################################################################'
echo

sudo apt-get -y update
sudo apt-get install -y python3
sudo apt-get install -y python3-pip
sudo apt-get install -y jq




echo "creating a tools folder in ~/"
mkdir ~/tools
cd ~/tools/
echo "done"



echo "installing SQLMAP"
git clone https://github.com/sqlmapproject/sqlmap.git
cd ~/tools/
echo "done"



echo "installing Linkfinder"
git clone https://github.com/GerbenJavado/LinkFinder.git
cd ~/tools/
echo "done"


echo "installing dnsx"
go install github.com/projectdiscovery/dnsx/cmd/dnsx@latest
echo "done"

echo "installing headi"
go install github.com/mlcsec/headi@latest
echo "done"

echo "installing gospider"
go install github.com/jaeles-project/gospider@latest
echo "done"


echo "installing unfurl"
go install github.com/tomnomnom/unfurl@latest 
echo "done"

echo "installing dalfox"
go install github.com/hahwul/dalfox/v2@latest
echo "done"

echo "installing naabu"
go install github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
echo "done"

echo "installing gau"
go install github.com/lc/gau@latest
echo "done"


echo "installing nuclei"
go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest 
echo "done"

echo "installing httpx"
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
echo "done"


apt install adb

echo "installing qsreplace"
go install github.com/tomnomnom/qsreplace@latest
echo "done"

echo "installing anew"
go install github.com/tomnomnom/anew@latest
echo "done"

echo "installing Gf"
go install github.com/tomnomnom/gf@latest
echo "done installing gf, now adding the patterns"

echo -e "Gf patterns"
cp -r $GOPATH/pkg/mod/github.com/tomnomnom/gf@v0.0.0-20200618134122-dcd4c361f9f5/examples ~/.gf
echo "installing GF patterns"
cd ~
git clone https://github.com/1ndianl33t/Gf-Patterns.git
sudo mv ~/Gf-Patterns/*.json ~/.gf

echo "created a recon folder in ~/"
mkdir ~/gorecon

echo -e "\n\n\n\nDone! All tools are set up in ~/tools"

sudo apt-get -y update
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean

ls -la

echo "happy hacking"
