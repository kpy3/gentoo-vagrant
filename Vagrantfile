Vagrant.configure("2") do |config|
  config.vm.box_check_update = true
  
  config.vm.define "macro1" do |node|
    config.vm.box = "generic/gentoo"
    node.vm.provider "virtualbox" do |vb|
      vb.cpus   = 2
      vb.memory = 1024
    end

    node.vm.hostname = "zoo"

    node.vm.synced_folder "."         , "/vagrant", mount_options: ["rw"]

    config.vm.provision "shell", path: "provision/setup.sh"
  end
end
