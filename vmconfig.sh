# manually:
# su -
# adduser *user sudo
# logout and login
# sudo apt install git
# git clone git@github.com:Toso42/inception.git

sudo apt update && sudo apt upgrade -y
sudo apt install vim flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.visualstudio.code