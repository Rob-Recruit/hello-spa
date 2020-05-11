# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  #Box configuration    
  config.vm.box = "centos/7"
  config.vm.box_check_update = false
  config.vm.hostname = "Hellospa"
  config.vm.post_up_message = "Your Hellospa VM machine is set !!!"
  #-----------------------------------------------------------------------
  #Network configuration
  config.vm.network "forwarded_port", guest: 4200, host: 4220
  config.vm.network "forwarded_port", guest: 8080, host: 8070
  
  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", type: "dhcp"
  #------------------------------------------------------------------------
  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "private_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  #config.vm.synced_folder "../../hello-spa-master", "/vagrant", type: "rsync"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  
  
  
  #VirtaulBox machine configuration
  config.vm.provider "virtualbox" do |vb|
   vb.name = "Hellospa"
   vb.cpus = 2
   vb.memory = "1024"
   vb.gui = false
   
  end
  #
  
  # View the documentation for the provider you are using for more
  # information on available options.
  config.vm.provision "docker" do |d|
    d.build_image "/vagrant",
     args: "-t hello-spa"
    d.run "hello-spa",
     args: "--name hello-spa-container -d -p 8080:80"	    
  end
  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  #config.vm.provision "shell", inline: <<-SHELL
  #   sudo yum update
  #   sudo yum install -y vim git net-tools
  #   sudo /vagrant/deploy/install_docker.sh
  #   /vagrant/deploy/start_docker.sh
  #SHELL
end
