#!/bin/bash

# script to automatically do the following steps:
#   - install the dependencies to compile the program, i.e. install 'gcc', 'make' and 'libhidapi-dev''
#   - compile the program
#   - copy the binary 'msiklm' to /usr/local/bin/msiklm
#   - run msiklm with 'test' parameter to check if the keyboard is detected

echo -e "\e[0;35minstallation script for msiklm - MSI Keyboard Light Manager\e[0m"
echo -e "\e[0;35m###########################################################\e[0m"

echo -e "installing dependencies..."
sleep 1

sudo apt-get install gcc make libhidapi-dev

echo -e "building the binary..."
sleep 1

#compile
make

#copying into /usr/local/bin/msiklm which also makes it callable via the msiklm command
sudo cp msiklm /usr/local/bin/msiklm
sudo chmod 755 /usr/local/bin/msiklm

echo -e "testing the binary..."
sleep 1
sudo msiklm test
