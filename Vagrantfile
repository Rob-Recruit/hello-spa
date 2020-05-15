# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  #------------------------------------------------------------------------
 
  #Box configuration    
  config.vm.box = "centos/7"
  config.vm.box_check_update = false
  config.vm.hostname = "HellospaNP"
  config.vm.post_up_message = "Your Hellospa no docker provision VM machine is set !!!"
  #------------------------------------------------------------------------
 
  #Network configuration
  config.vm.network "forwarded_port", guest: 8080, host: 8060
  config.vm.network "private_network", type: "dhcp"
  #------------------------------------------------------------------------
  
  #VirtaulBox machine configuration
  config.vm.provider "virtualbox" do |vb|
   vb.name = "HellospaNP"
   vb.cpus = 2
   vb.memory = "1024"
   vb.gui = false
   
  end
  #------------------------------------------------------------------------
  
  #Dokcer provision - configuration to build app image and run app container on vm 
  #config.vm.provision "docker" do |d|
  #  d.build_image "/vagrant",
  #   args: "-t hello-spa"
  #  d.run "hello-spa",
  #   args: "--name hello-spa-container -d -p 8080:80"	    
  #end
  #------------------------------------------------------------------------
  
  #Shell provision for basic tools installation might be useful after app installation 
  config.vm.provision "shell", inline: <<-SHELL
     sudo yum update
     sudo yum install -y vim git net-tools
     sudo /vagrant/install_docker.sh
     /vagrant/start_docker.sh
  SHELL
  end
  #------------------------------------------------------------------------
