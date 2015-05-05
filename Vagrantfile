VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	# Using Ubuntu Trusty (14.04) for now
	config.vm.box = "ubuntu/trusty64"

	# Give Box it's own IP
	config.vm.network "private_network", ip: "192.168.34.110"
	
	# Would you rather use port forwarding? comment out that last line and add these:
	# config.vm.network :forwarded_port, guest: 80, host: 8888 
	# config.vm.network :forwarded_port, guest: 3000, host: 3000 #common port for node, etc

	# Sync parent folder. Clone this repo into project folder.
	# I Like to work this way so I don't have vagrant files running all over my code.
	config.vm.synced_folder "../", "/parent"

	# EDIT THE SCRIPT REFERENCED BELOW TO 
	config.vm.provision "shell", path: "setup.sh"

	config.vm.provider "virtualbox" do |v|
		#NAME THE VM -- You'll probably want to rename this box on a per-project basis.
		#For now, it should inherit the name of the parent folder
		v.name = "VAGRANT DEV TOOLKIT: " + File.basename(Dir.getwd+"/..")
	end	
end
