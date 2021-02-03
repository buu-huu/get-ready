#!/bin/bash

RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){
	echo -e "\n${RED}${1}${NC}"
}
function GREEN(){
	echo -e "\n${GREEN}${1}${NC}"
}
function YELLOW(){
	echo -e "\n${YELLOW}${1}${NC}"
}
function BLUE(){
	echo -e "\n${BLUE}${1}${NC}"
}

# Testing if root...
if [ $UID -ne 0 ]
then
	RED "Run this script as root!" && echo
	exit
fi

# Update and upgrade
BLUE "Running apt update and apt upgrade..."
sudo apt update && sudo apt upgrade -y

# curl
BLUE "Installing curl..."
sudo apt install -y curl

# Git
BLUE "Installing Git..."
sudo apt install -y git

# VS Code
BLUE "Installing VS Code..."
wget "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -O code.deb
dpkg -i code.deb
rm code.deb

# tmux
BLUE "Installing tmux..."
sudo apt install -y tmux

# Python
BLUE "Installing Python..."
sudo apt install -y pyton

# Python Pip
BLUE "Installing Python Pip..."
sudo apt install -y python3-pip

# OpenVPN
BLUE "Installing OpenVPN..."
sudo apt install -y openvpn

# Nmap
BLUE "Installing Nmap..."
sudo apt install -y nmap

# Wireshark
BLUE "Installing Wireshark..."
sudo apt install -y wireshark

# Golang
BLUE "Installing Golang..."
sudo apt install -y golang

# Virtualbox
BLUE "Installing Virtualbox..."
sudo apt install -y virtualbox

# OpenJDK
BLUE "Installing OpenJDK"
sudo apt install -y openjdk-14-jre
sudo apt install -y openjdk-14-jdk

# zsh
BLUE "Installing zsh..."
sudo apt install -y zsh
chsh -s $(which zsh)

# Finish
GREEN "Get-Ready finished! Check if there were any errors"