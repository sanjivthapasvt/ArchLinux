#!/bin/bash
#Just to Display the system is being updated and I have added time so you can cancel it if you want
#You can edit this file to not update your system but it is not recommended
echo "Updating your system Please wait a second"
sleep 3
sudo pacman -Syu --noconfirm
echo "Sucessfully updated your system!!!"

#This is to install AUR helper Yay and Curl
https://github.com/Jguer/yay.git
cd yay
makepkg -si
sudo pacman -S curl

#This is to let user know that ML4W dotfile is being used

echo "Installing Hyprland with ML4W dotfiles....Please wait"
sleep 2

#This command to install ML4W
bash <(curl -s https://raw.githubusercontent.com/mylinuxforwork/dotfiles/main/setup-arch.sh)

#This is for zsh plugin Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Command to install required software for me
yay -S brave visual-studio-code-bin --noconfirm
sudo pacman -S telegram-desktop alacritty signal nano libreoffice krita gimp  thunar --noconfirm

#Copy ZSH file
cp -rf .zshrc ~/

