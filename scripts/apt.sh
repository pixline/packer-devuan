export DEBIAN_FRONTEND=noninteractive

cat << SOURCES > /etc/apt/sources.list
deb http://deb.devuan.org/merged chimaera main non-free contrib
deb http://pkgmaster.devuan.org/merged chimaera-security main contrib non-free
deb http://deb.devuan.org/merged chimaera-updates main contrib non-free
SOURCES

#sed -i -e 's/jessie/ascii/g' /etc/apt/sources.list

apt-get --yes update
apt-get --yes dist-upgrade
apt-get --yes install apt-transport-https ca-certificates curl git \
	rsync screen vim-tiny wget zsh
#apt-get -y install --no-install-recommends libdbus-1-3

echo 'APT: done'
