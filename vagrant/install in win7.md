1. Download and install the most recent VirtualBox for Windows from https://www.virtualbox.org/wiki/Downloads
2. Download and install the latest version of Vagrant from http://downloads.vagrantup.com. Windows users, download Vagrant.msi
3. Install Git bash https://git-scm.com/downloads

NOTE: 
#####version 1.1  
date 15/11/2015  
WIN 7 ultimate 32bit  
Virtuallbox 4.3.12  
Vagrant 1.7.4  

#####version 1.0 
date 29/7/2015  
WIN 7 ultimate 32bit  
Virtuallbox 4.3.6  
Vagrant 1.7.2  


3. (update NO NEED) So all I did was right-click on "My Computer"-->Properties-->Advanced System Settings-->Environment Variables. Here I scrolled down to find "VBOX_MSI_INSTALL_PATH" and I changed it to "VBOX_INSTALL_PATH." 

4. (update NO NEED) Run cmd as administrator

5. http://rubyinstaller.org/downloads/
6. http://railsinstaller.org/en
7. https://downloads.getchef.com/chef-dk/windows/

8. Add hostonly adapter network 2  
    IP4v   192.168.33.10/24  ----> card tren win
    DHCP server
        server add 192.168.33.1/24
        lower 192.168.33.5
        upper 192.168.33.10

9. Vagrantfile 
    config.vm.network "private_network", ip: "192.168.33.15"    #### Fai khác card trên win
Nếu sai thì dùng lệnh để sữa:
    ifconfig eth1 192.168.33.15 netmask 255.255.255.0 up

10. thay đổi file sources.list

Fail to run this stack
https://github.com/MiniCodeMonkey/Vagrant-LAMP-Stack

c:\>vagrant plugin install vagrant-hostmanager
Installing the 'vagrant-hostmanager' plugin. This can take a few minutes...
Installed the plugin 'vagrant-hostmanager (1.5.0)'!

c:\>vagrant plugin install vagrant-omnibus
Installing the 'vagrant-omnibus' plugin. This can take a few minutes...
Installed the plugin 'vagrant-omnibus (1.4.1)'!

c:\>vagrant plugin install vagrant-berkshelf
Installing the 'vagrant-berkshelf' plugin. This can take a few minutes...
Installed the plugin 'vagrant-berkshelf (4.0.0)'!
Post install message from the 'vagrant-berkshelf' plugin:

The Vagrant Berkshelf plugin requires Berkshelf from the Chef Development Kit.
You can download the latest version of the Chef Development Kit from:

    https://downloads.getchef.com/chef-dk

Installing Berkshelf via other methods is not officially supported.

c:\LAMP-Stack>vagrant up
Failed to load the "vagrant-berkshelf" plugin. View logs for more details.
Bringing machine 'projectname' up with 'virtualbox' provider...
There are errors in the configuration of this machine. Please fix
the following errors and try again:

Vagrant:
* Unknown configuration section 'berkshelf'.

####TIP 
1. echo 192.168.33.10 dev.hdso.xyz >> %WINDIR%\System32\Drivers\Etc\Hosts




