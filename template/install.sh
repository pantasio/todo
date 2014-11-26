

#Some info http://www.ideaplexus.com/2014/11/09/install-vagrant-on-arch-linux/
sudo cp ./virtualbox.conf /etc/modules-load.d/
#Many Vagrant boxes are configured to use NFS for sharing the data between host and guest system.
#It’s a lot faster than the shared folder from VirtualBox.
#so install NFS
sudo pacman -Sy nfs-utils
#Install rsync
sudo pacman -Sy rsync
sudo pacman -Sy vagrant
