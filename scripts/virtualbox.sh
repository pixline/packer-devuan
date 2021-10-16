export DEBIAN_FRONTEND=noninteractive

VBOX_ISO=/home/vagrant/VBoxGuestAdditions.iso

mount -o loop $VBOX_ISO /mnt
yes|sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -f $VBOX_ISO

service vboxadd start

echo 'VBox: done'
