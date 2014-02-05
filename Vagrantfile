Vagrant.configure("2") do |config|

config.vm.define "build" do |build|  
  build.vm.box = "build"
  build.vm.hostname = "build"
end

  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 9090, host: 9090
  config.vm.network "forwarded_port", guest: 7070, host: 7070
  config.vm.network "forwarded_port", guest: 6060, host: 6060

  config.vm.provision "shell", path: "provision.sh"
  
  config.proxy.http = "http://proxy.nus.edu.sg:8080"
  config.proxy.https = "http://proxy.nus.edu.sg:8080"
  config.proxy.no_proxy = "localhost,127.0.0.1"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = ""
    puppet.manifest_file  = "base.pp"
    #puppet.options = "--verbose --debug"
  end
end
