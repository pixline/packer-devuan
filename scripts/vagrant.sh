date > /etc/vagrant_box_build_time

echo 'vagrant ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/vagrant

echo 'UseDNS no' >> /etc/ssh/sshd_config

mkdir -pm 700 /home/vagrant/.ssh
curl -Lo /home/vagrant/.ssh/authorized_keys https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

curl -Lo /root/.zshrc http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
sed -i -e 's/debian_version/devuan_version/g' /root/.zshrc
chsh -s /usr/bin/zsh root
cp /root/.zshrc /home/vagrant/.zshrc
chown vagrant:vagrant /home/vagrant/.zshrc
chsh -s /usr/bin/zsh vagrant

# ugly hack to avoid zsh compinit errors... looking for a better fix.
sed -i -e 's/exit 0/chmod 755 \/usr\/local\/share\/zsh\/site-functions; exit 0/g' /etc/rc.local

cat << MOTD > /etc/motd
Welcome to Devuan ASCII

MOTD

echo 'END'