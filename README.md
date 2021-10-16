# Devuan 4.0 (Chimaera) packer template

This [Packer](https://www.packer.io/) template is intended to be a starting point for a minimal custom [Devuan 4.0 (Chimaera)](https://devuan.org/) vagrant box. 

## Highlights:

* Final image size: ~470MB
* VBox Guest Additions 
* Usable shell setup: ([Zsh](http://www.zsh.org/) with [GRML.org zshrc](http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc))
* No systemd! :grin:

## Requirements ( = tested with )

* Packer >= 1.7.0
* VirtualBox >= 6.1
* Vagrant >= 2.2.14

## Usage

```
packer build devuan.pkr.hcl
vagrant up
```

## Credits

Preseed.cfg file ~~blatantly copied from~~ heavily inspired by [tylert/packer-build](https://github.com/tylert/packer-build/blob/master/source/debian/11_bullseye/base.preseed) and [bgstack15 blog post](https://bgstack15.wordpress.com/2020/03/26/use-virt-install-to-fully-automate-the-install-for-devuan-ceres-with-preseed-march-2020-edition/).

