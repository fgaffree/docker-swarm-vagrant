# Vagrantfile para criar 3 VMs: 1 Manager, 2 Workers

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  
  nodes = {
    "manager" => "192.168.56.10",
    "worker1" => "192.168.56.11",
    "worker2" => "192.168.56.12"
  }

  nodes.each do |name, ip|
    config.vm.define name do |node|
      node.vm.hostname = name
      node.vm.network "private_network", ip: ip
      node.vm.provider "virtualbox" do |vb|
        vb.memory = 1024
        vb.cpus = 1
      end
      node.vm.provision "shell", path: "#{name.include?("manager") ? "manager.sh" : "worker.sh"}"
    end
  end
end
