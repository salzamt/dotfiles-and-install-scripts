sudo apt-get update && sudo apt-get upgrade && apt-get install curl

# graphics, wirelesse, bluetooth, etc....a little helper from ubuntu
sudo ubuntu-drivers autoinstall

# timeshift backup repo
sudo apt-add-repository -y ppa:teejee2008/ppa

# shotcut video editor
sudo add-apt-repository ppa:haraldhv/shotcut

# pinta image editing
sudo add-apt-repository ppa:pinta-maintainers/pinta-stable

# python terminal color module (used for i3blocks custom blocks)
sudo pip install termcolor


# ubuntu make
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make

# 0ad (game)
sudo add-apt-repository ppa:wfg/0ad

# signal
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

/usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2018.01.30_all.deb keyring.deb SHA256:baa43dbbd7232ea2b5444cae238d53bebb9d34601cc000e82f11111b1889078a
sudo dpkg -i ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list

# bring back gnome handyness in i3 
sudo apt install -y gnome-flashback gnome-sushi gnome-tweak-tool
cd ~/workspace
git clone https://github.com/glsorre/i3-gnome
cd i3-gnome
sudo make install

# insomnia
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" |  sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -


# installations of some fancy things.
sudo apt update
sudo apt install i3 i3blocks gtk-recordmydesktop blueman gthumb openvpn htop insomnia pavucontrol gpick curl feh zsh tmux vim vifm snapd timeshift shotcut pinta darktable gnome-screenshot ubuntu-make signal-desktop git arandr glmark2 hardinfo

# little more hd format utils for exfat and hfs+
sudo apt-get install exfat-fuse exfat-utils hfsprogs

# optional games
sudo apt install steam 0ad 

# whatsdesk=whatsapp linux client similar to signal client
sudo snap install spotify vlc audacity whatsdesk mailspring viking-gps

# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# playerctl for adding hotkeys and i3wm interaction of i3blocks with media players
cd ~/Downloads
wget https://github.com/acrisci/playerctl/releases/download/v2.0.1/playerctl-2.0.1_amd64.deb
sudo dpkg -i playerctl-2.0.1_amd64.deb
# nordvpn
wget https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb
sudo dpkg -i nordvpn-release_1.0.0_all.deb

# i3 configured wallpaper
wget https://wallpapercave.com/wp/y3MGd53.jpg ~/Pictures/wallpaper.jpg

# install megasync CURRENTLY MANUALLY
# https://mega.nz/sync

# 1password CURRENTLY MANUALLY
# https://support.1password.com/command-line-getting-started/

# docker (c&p from docs...)
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce nordvpn

# pycharm
umake ide pycharm-professional

sudo apt-get install qlandkartegt 
sudo apt install inkscape
sudo apt install deepin-screenshot
sudo apt install gimp
sudo apt install kolourpaint
sudo apt install texlive

pip install ranger-fm

# install dunst
apt install libdbus-1-dev libx11-dev libxinerama-dev libxrandr-dev libxss-dev libglib2.0-dev libpango1.0-dev libgtk-3-dev libxdg-basedir-dev
sudo apt install libdbus-1-dev libx11-dev libxinerama-dev libxrandr-dev libxss-dev libglib2.0-dev libpango1.0-dev libgtk-3-dev libxdg-basedir-dev libnotify-dev
cd workspace
git clone https://github.com/dunst-project/dunst.git && cd dunst && nmake && nsudo make install

# systemd for i3lock and nordvpn
/etc/systemd/system/i3lock.service /etc/systemd/system/nordvpn_disc.service
/etc/systemd/system/nordvpn_conn.service
/etc/systemd/system/i3lock.service
systemctl enable nordvpn_disc.service
systemctl enable nordvpn_conn.service
systemctl enable i3lock.service

# python-vim ide
sudo apt install libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev git ctags vim-gtk
git clone https://github.com/rapphil/vim-python-ide.git && cd vim-python-ide && ./install.sh

# install sensors (CLI: sensors, pensor for GUI)
sudo apt install lm-sensors hddtemp psensor && sudo sensors-detect && sensors
