export DEBIAN_FRONTEND=noninteractive

chmod -R 755 /usr/local/share/zsh/site-functions

apt-get --yes purge avahi-autoipd bluez bluetooth \
    debian-reference-common debian-reference-it \
    doc-debian debian-faq eject fortune-mod \
    fortunes-it iw laptop-detect libwayland-egl1 \
    linux-headers-5.10.0-9-amd64 make \
    manpages manpages-it maint-guide-it make \
    powertop patch task-laptop telnet wpasupplicant \
    wireless-regdb wireless-tools x11-common

apt-get --yes autoremove

rm /var/lib/dhcp/*
rm /var/cache/apt/archives/*.deb

echo 'Cleanup: done'
