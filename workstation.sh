#!/bin/bash

## Removing locks from apt ##

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

## Update repository ##

sudo apt update &&

  ## python-pip nautilus-dropbox not found in ubuntu-20
  ## Installing packages and softwares from Ubuntu deb repository ##
  sudo apt install git maven python3 docker docker-compose git build-essential libssl-dev flatpak gnome-software-plugin-flatpak yarn -y &&
  sudo apt install ruby-full -y &&
  sudo apt-get install --no-install-recommends gnome-panel -y &&

  ## Installing Snap packages ##
  sudo snap install code --classic &&
  sudo snap install --edge node --classic &&
  sudo snap install insomnia &&
  sudo snap install spotify &&
  sudo snap install intellij-idea-ultimate --classic &&

  ## Adicionando repositório Flathub ##
  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

  ## Instalando Apps do Flathub ##
  sudo flatpak install flathub com.sublimetext.three -y &&

  # Installing tools
  sudo apt install gnome-tweak-tool -y &&
  sudo apt install guake -y &&
  sudo apt install curl -y &&
  sudo apt install apache2 -y &&
  sudo chown -R $USER:$USER /var/www/html &&
  sudo apt install zsh -y &&
  chsh -s $(which zsh) -y &&
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y &&
  sudo groupadd docker &&
  sudo usermod -aG docker $USER &&
  newgrp docker &&
  wget https://nosqlbooster.com/s3/download/releasesv5/nosqlbooster4mongo-5.2.12.AppImage &&
  chmod a+x nosqlbooster4mongo-5.2.12.AppImage &&
  sudo apt install htop -y &&
  sudo apt-get install openvpn -y &&
  sudo apt-get install network-manager-openvpn-gnome -y &&
  sudo apt install deepin-screenshot -y &&
  curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add - &&                                                            
  echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_18.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list &&
  sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_18.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc" &&
  sudo apt install albert -y &&

  ## Atualização do sistema ##
  sudo apt update && sudo apt upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

  # End of script ##
  echo "Finished"
