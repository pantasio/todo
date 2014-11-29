#Error
W: Failed to fetch http://us.archive.ubuntu.com/ubuntu/dists/precise/InRelease  

W: Some index files failed to download. They have been ignored, or old ones used instead.

#Fix
vagrant@precise32:~$ echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null
vagrant@precise32:~$ sudo apt-get update
#############################################################
#########Ubuntu 14.04###################
#Error
vagrant@vagrant-ubuntu-trusty-32:~$ sudo apt-get update
Ign http://archive.ubuntu.com trusty InRelease
Ign http://security.ubuntu.com trusty-security InRelease
Ign http://archive.ubuntu.com trusty-updates InRelease
Hit http://security.ubuntu.com trusty-security Release.gpg
Hit http://archive.ubuntu.com trusty Release.gpg
Hit http://security.ubuntu.com trusty-security Release
Hit http://archive.ubuntu.com trusty-updates Release.gpg
Hit http://archive.ubuntu.com trusty Release
Hit http://security.ubuntu.com trusty-security/main Sources
Hit http://archive.ubuntu.com trusty-updates Release                           
Hit http://security.ubuntu.com trusty-security/universe Sources        
Get:1 http://security.ubuntu.com trusty-security/main i386 Packages [157 kB]   
Get:2 http://archive.ubuntu.com trusty/universe Sources [6,399 kB]             
Get:3 http://archive.ubuntu.com trusty/main i386 Packages [1,348 kB]           
Get:4 http://security.ubuntu.com trusty-security/universe i386 Packages [73.0 kB]
Get:5 http://archive.ubuntu.com trusty/universe i386 Packages [5,866 kB]       
Hit http://security.ubuntu.com trusty-security/universe Translation-en         
Get:6 http://security.ubuntu.com trusty-security/main Translation-en [81.1 kB] 
Get:7 http://archive.ubuntu.com trusty/main Translation-en [762 kB]            
Get:8 http://archive.ubuntu.com trusty/universe Translation-en [4,089 kB]      
Hit http://archive.ubuntu.com trusty-updates/main Sources                      
Hit http://archive.ubuntu.com trusty-updates/universe Sources                  
Get:9 http://archive.ubuntu.com trusty-updates/universe i386 Packages [221 kB] 
Get:10 http://archive.ubuntu.com trusty-updates/main Translation-en [169 kB]   
Get:11 http://archive.ubuntu.com trusty-updates/universe Translation-en [111 kB]
Err http://archive.ubuntu.com trusty/main Sources                              
  404  Not Found [IP: 91.189.91.14 80]
Ign http://archive.ubuntu.com trusty/main Translation-en_US                    
Ign http://archive.ubuntu.com trusty/universe Translation-en_US                
Get:12 http://archive.ubuntu.com trusty-updates/main i386 Packages [361 kB]    
Fetched 19.6 MB in 53s (369 kB/s)                                              
W: Failed to fetch http://archive.ubuntu.com/ubuntu/dists/trusty/main/source/Sources  404  Not Found [IP: 91.189.91.14 80]

E: Some index files failed to download. They have been ignored, or old ones used instead.

#Fix
thay sources.list






