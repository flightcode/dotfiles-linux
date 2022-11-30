#!/bin/bash

#Install font
yay -S --noconfirm nerd-fonts-complete

#Install zsh & starship
yay -S --noconfirm zsh starship
chsh -s $(which zsh)

#Install essential programs
yay -S --noconfirm picom bspwm sxhkd betterlockscreen feh polybar rofi kitty ranger pywal neofetch imagemagick redshift

# #Configs
# chmod +x ~/.config/polybar/launch.sh
# gsettings set org.gnome.desktop.interface font-name "NotoSans Nerd Font"
# gsettings set org.gnome.desktop.interface document-font-name "NotoSans Nerd Font"
# gsettings set org.gnome.desktop.interface monospace-font-name "NotoSans Nerd Font Mono"
