Vagrant::Config.run do |config|

  config.vm.define :build do |build_config|
    build_config.vm.box = "build"
    config.vm.host_name = "build"
    config.vm.forward_port 8080, 8080
    config.vm.forward_port 9090, 9090
    build_config.vm.provision :puppet do |puppet|
      puppet.manifests_path = ""
      puppet.manifest_file  = "base.pp"
    end
  end
end
