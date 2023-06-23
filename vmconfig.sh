# README:
# DO THE FOLLOWING BY HAND ON A CLEAN DEBIAN SYSTEM
# su -
# adduser *user sudo
# logout and login
# sudo apt install git
# git clone git@github.com:Toso42/inception.git

sudo apt update && sudo apt upgrade -y
sudo apt install vim flatpak make
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.visualstudio.code

# official docker installation steps for DEBIAN
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# docker group setup for 
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
