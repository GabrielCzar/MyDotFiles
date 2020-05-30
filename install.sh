#!/bin/bash

if command -v git >/dev/null 2>&1; then
  git clone https://github.com/gabrielczar/mydotfiles.git
  cd mydotfiles
elif command -v unzip >/dev/null 2>&1; then
  wget -O mydotfiles.zip https://github.com/gabrielczar/mydotfiles/archive/master.zip
  unzip mydotfiles.zip
  cd mydotfiles
else
  echo "Unable to download repository."
  exit 1
fi

sudo bash workstation.sh

bash git_config_global.sh
