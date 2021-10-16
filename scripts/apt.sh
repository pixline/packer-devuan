export DEBIAN_FRONTEND=noninteractive

cat << SOURCES > /etc/apt/sources.list
deb http://deb.devuan.org/merged chimaera main non-free contrib
deb http://pkgmaster.devuan.org/merged chimaera-security main contrib non-free
deb http://deb.devuan.org/merged chimaera-updates main contrib non-free
SOURCES

apt-get --yes update
apt-get --yes dist-upgrade
apt-get --yes install apt-transport-https ca-certificates curl git \
	linux-headers-5.10.0-9-amd64 make rsync screen vim-nox wget zsh

echo 'APT: done'
