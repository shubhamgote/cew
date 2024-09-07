#!/data/data/com.termux/files/usr/bin/bash

# banner
echo "========================================================="
echo -e "\033[33m                          ___                           \033[0m"
echo -e "\033[33m | | |_      ._ _|_        |  ._   _ _|_  _. | |  _  ._ \033[0m"
echo -e "\033[33m |_| |_) |_| | | |_ |_|   _|_ | | _>  |_ (_| | | (/_ |  \033[0m"
echo -e "\033[33m                                                        \033[0m"
echo "========================================================="
echo -e "\033[33m---- Written by dmdhrumilmistry ----\033[0m"
echo "========================================================="
echo -e "\033[33m[*] Script downloaded from https://github.com/dmdhrumilmistry/TermuxScripts\033[0m"
# end banner

# start installation
echo -e "\033[33m[*] Updating packages...\033[0m"
pkg update -y

echo -e "\033[33m[*] Upgrading packages...\033[0m"
pkg upgrade -y

echo -e "\033[33m[*] Installing requirements...\033[0m"
pkg install proot-distro -y
