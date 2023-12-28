#!/usr/bin/env bash

# Bold, bright colors for a striking header
echo -e "\e[1m\e[91m███████╗ ██████╗ ██████╗ ██╗███╗  ██╗      ██████╗ ███████╗      ██████╗ ██████╗ ██████╗ \e[0m"
echo -e "\e[1m\e[92m╚══███╔╝██╔═══██╗██╔══██╗██║████╗ ██║     ██╔═══██╗██╔════╝     ██╔══██╗██╔══██╗██╔═══██╗\e[0m"
echo -e "\e[1m\e[93m ███╔╝ ██║  ██║██████╔╝██║██╔██╗ ██║     ██║  ██║███████╗     ██████╔╝██████╔╝██║  ██║\e[0m"
echo -e "\e[1m\e[92m ███╔╝ ██║  ██║██╔══██╗██║██║╚██╗██║     ██║  ██║╚════██║     ██╔═══╝ ██╔══██╗██║  ██║\e[0m"
echo -e "\e[1m\e[91m███████╗╚██████╔╝██║ ██║██║██║ ╚████║    ╚██████╔╝███████║      ██║   ██║ ██║╚██████╔╝\e[0m"
echo -e "\e[1m\e[94m╚══════╝ ╚═════╝ ╚═╝ ╚═╝╚═╝╚═╝  ╚═══╝      ╚═════╝ ╚══════╝      ╚═╝   ╚═╝ ╚═╝ ╚═════╝ \e[0m"
echo -e "\e[96m|ZORIN-OS-PRO| |Script v1.0.0| |ʙʏ tnkrueckergreen|\e[0m"

sleep 1

# Clear visual cues for actions
echo -e "\e[1mRemoving default server list...\e[0m"
sudo rm -r /etc/apt/sources.list.d/zorin.list

echo -e "\e[1mCopying modified server list...\e[0m"
sudo cp ./zorin.list /etc/apt/sources.list.d

echo -e "\e[1mIntroducing premium user agent...\e[0m"
sudo cp ./99zorin-os-premium-user-agent /etc/apt/apt.conf.d/

echo -e "\e[1mPreparing to install dependencies...\e[0m"
sleep 1
sudo apt install ca-certificates -y

echo -e "\e[1mUpdating packages...\e[0m"
sudo apt update -y

echo -e "\e[1mInstalling pro layouts...\e[0m"
sudo apt install zorin-appearance-layouts-shell-premium -y

echo -e "\e[1mInstalling pro wallpapers...\e[0m"
sudo apt install zorin-os-pro-wallpapers -y

echo -e "\e[1mAll done!\e[0m"
echo -e "Your Zorin OS will restart in 5 seconds..."
sleep 5

# Clear reboot message
echo -e "\e[1mRebooting...\e[0m"
sudo reboot
