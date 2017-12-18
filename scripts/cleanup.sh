export DEBIAN_FRONTEND=noninteractive

chmod -R 755 /usr/local/share/zsh/site-functions

aptitude purge ~c
apt-get --yes purge ansible aptitude aptitude-common aptitude-doc-en avahi-autoipd \
	bluez bluetooth build-essential binutils \
	cups cpp cpp-6 cruft \
	debian-reference-common debian-reference-it doc-debian debian-faq debfoster deborphan \
	eject \
	fortune-mod fortunes-it fakeroot ftp \
	gcc gcc-6 \
	iw \
	libasan3 libatomic1 libc-dev-bin linux-headers-amd64 laptop-detect \
	libc6-dev libcc1-0 libcilkrts5 libfakeroot libgcc-6-dev libgomp1 libisl15 \
	libitm1 liblsan0 libmpc3 libmpfr4 libmpx2 libquadmath0 libtsan0 libubsan0 \
	linux-compiler-gcc-6-x86 linux-headers-4.9.0-4-amd64 \
	linux-headers-4.9.0-4-common linux-headers-amd64 linux-kbuild-4.9 \
	linux-image-3.16.0-4-amd64 linux-libc-dev \
	manpages manpages-dev manpages-it make manpages-dev mutt \
	powertop patch \
	task-laptop telnet \
	wpasupplicant wireless-regdb wireless-tools w3m\

apt-get --yes autoremove

rm /var/lib/dhcp/*
rm /var/cache/apt/archives/*.deb

echo 'END'