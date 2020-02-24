Vagrant.configure("2") do |config|
  config.vm.box_check_update = true
  
  config.vm.define "macro1" do |node|
    config.vm.box = "generic/gentoo"
    node.vm.provider "virtualbox" do |vb|
      vb.cpus   = 2
      vb.memory = 256
    end

    node.vm.synced_folder "."         , "/vagrant", mount_options: ["rw"]

    #config.vm.provision "shell", path: "provision/setup.sh"

    ## For masterless, mount your salt file root
    config.vm.synced_folder "salt/roots/", "/srv/salt/"

    ## Use all the defaults:
    config.vm.provision :salt do |salt|

      salt.masterless = true
      salt.run_highstate = true
      salt.colorize = true
      #salt.verbose = true

    end

  end
end
