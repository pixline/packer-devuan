Vagrant.configure("2") do |config|
  config.vm.box = "devuan"
  config.vm.box_url = "dist/devuan.box"
  
  # do not sync vagrant folder: it will rsync the devuan.box file too!
  config.vm.synced_folder '.', '/vagrant', disabled: true
end
