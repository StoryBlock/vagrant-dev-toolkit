VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	#Using Ubuntu Trusty for now
	config.vm.box = "ubuntu/trusty64"

	#Give Box it's own IP
	config.vm.network "private_network", ip: "192.168.34.110"

	#Sync parent folder. Clone this repo into project folder.
	config.vm.synced_folder "../", "/parent"

	#Run the setup script of choice.
	config.vm.provision "shell", path: "scripts/setup.sh"

	config.vm.provider "virtualbox" do |v|
		#NAME VM -- Probably will need renaming on a per-project basis.
		v.name = "VAGRANT DEV TOOLKIT"
	end	
end
