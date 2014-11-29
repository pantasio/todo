#Error
W: Failed to fetch http://us.archive.ubuntu.com/ubuntu/dists/precise/InRelease  

W: Some index files failed to download. They have been ignored, or old ones used instead.

#Fix
vagrant@precise32:~$ echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
vagrant@precise32:~$ sudo apt-get update
