export DEBIAN_FRONTEND=noninteractive

sed -i -e 's/jessie/ascii/g' /etc/apt/sources.list

apt-get --yes update
apt-get --yes dist-upgrade
apt-get --yes install apt-transport-https ca-certificates curl dbus gettext git \
	htop openssh-server openssl python rsync screen vim-tiny wget zsh \
	linux-headers-amd64 build-essential dkms
apt-get -y install --no-install-recommends libdbus-1-3

reboot