# Devuan ASCII packer template

Welcome! This [Packer](https://www.packer.io/) template is intended to be a starting point for a minimal custom [Devuan ASCII](https://devuan.org/) vagrant box. Fork this project, add your own users and scripts, enjoy your custom Debian-based vagrant!

## Features

Waiting for a Devuan ASCII installer (it should happen soon, AFAIK) this script installs a minimal Jessie image, then dist-upgrade everything and setup the environment with a few shell scripts. Vagrant provisions for Debian should run against this image without any meaningful modification, besides everything related to service setup and management.

Highlights:

* Final VirtualBox image size: ~400MB
* Preinstalled VirtualBox guest additions
* Usable shell setup: ([Zsh](http://www.zsh.org/) + [grml.org zshrc](http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc))
* No systemd! Avoids [this nginx.service bug](https://bugs.launchpad.net/ubuntu/+source/nginx/+bug/1581864), likely a few others.
* `vagrant` user :grin:


## Requirements ( = tested with )

* Packer >= 1.1.3
* VirtualBox >= 5.2.2
* Vagrant >= 1.8.1

## Usage

```
packer build devuan-ascii.json
vagrant up
```

## Useful links

* [DebianInstaller Preseed](https://wiki.debian.org/DebianInstaller/Preseed)
* [Packer private box versioning](https://stackoverflow.com/questions/31952257/local-packer-box-versioning)
