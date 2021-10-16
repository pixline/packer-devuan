packer {
  required_plugins {
    virtualbox = {
      version = ">= 0.0.1"
      source = "github.com/hashicorp/virtualbox"
    }
  }
}

source "virtualbox-iso" "devuan" {
  guest_os_type = "Debian_64"
  iso_url = "https://files.devuan.org/devuan_chimaera/installer-iso/devuan_chimaera_4.0.0_amd64_server.iso"
  iso_checksum = "sha256:b2c0d159e9d7219422ef9e40673c3126aee118b57df79484384e7995abd2ba0f"
  memory = 2048
  disk_size = 30000
  hard_drive_interface = "sata"
  ssh_username = "vagrant"
  ssh_password = "vagrant"
  ssh_wait_timeout = "20m"
  shutdown_command = "echo 'vagrant' | sudo -S shutdown -Ph now"
  http_directory = "${path.cwd}/http/"
  http_port_min = 8000
  http_port_max = 9000
  boot_command = [
  "<down><enter><down><down><down><enter><wait33>",
  "http://{{ .HTTPIP }}:{{ .HTTPPort }}/chimaera.cfg<enter>"
  ]
}

build {
  sources = ["sources.virtualbox-iso.devuan"]

  provisioner "shell" {
    execute_command = "echo 'vagrant'|sudo -S sh '{{.Path}}'"
    scripts = [
      "scripts/apt.sh",
      "scripts/vagrant.sh",
      "scripts/virtualbox.sh",      
      "scripts/cleanup.sh",
      "scripts/minimize.sh"
    ]
  }
  
  post-processor "vagrant" {
    output = "dist/devuan-chimaera.box"
    keep_input_artifact = false
    compression_level = 9
  }
}

