Installation Steps
 
PART 1: INSTALLING & CONFIGURING APACHE, MYSQL, & PHP ON WINDOWS (WAMP)
----------------------------------------------------------------------------------
 
1. Download WampServer from http://www.wampserver.com/en/ & install.
   C:\wamp is a good location.  Do not run WampServer yet.
 
2. Configure MySQL.  The default MySQL configuration file is very limiting.  Choose one
   of the model config files that best suits your system and copy & paste it to "wampserver.conf".
   These files are found in C:\wamp\bin\mysql\mysql5.1.36 , or someplace similar.
 
3. Start WampServer.
 
4. Configure Apache.  Apache's default port is 80, which may interfere with other programs
   (Skype, VPN, etc.).  Change it to port 8080.
   * Click on the WampServer tray icon.
   * Go up to Apache, let it open the secondary menu.
   * Click on httpd.conf to edit.
   * Change "Listen 80" to "Listen 8080".
   * Further down, change the ServerName line to read "ServerName localhost:8080"
   * Save the file & close the editor.
   * Re-start WampServer.
 
5. Make sure the following modules are enabled for Apache:
     alias_module
     rewrite_module
     vhost_alias_module
   * Click on the WampServer tray icon.
   * Go up to Apache, let it open the secondary menu.
   * Click on "Apache modules"
   * Scroll through the list and click on the module names to enable/disable them.
   * Many modules may already be enabled by default.  This is fine.
 
6. Configure PHP.
   * Click on the WampServer tray icon.
   * Go up to PHP, let it open the secondary menu.
   * Click on "php.ini".
   * Change any values necessary.
   * Save the file & close the editor.
   * Re-start WampServer.
   Recommended changes:
     * max_execution_time - increase on your dev server to a larger number, perhaps 120 or 180
     * memory_limit - increase to at least 96M, but possibly more (ex. 512M in devel environment).
     * post_max_size - increase if you plan on submitting very large form data.
     * upload_max_filesize - the largest size of file that you plan to upload using the web
       interface (ex. 8M)
 
7. Make sure the following extensions are enabled for PHP:
     php_curl
     php_gd2
     php_mysqli
     php_uploadprogress (this is optional)
   * Click on the WampServer tray icon.
   * Go up to PHP, let it open the secondary menu.
   * Click on "PHP extensions"
   * Scroll through the list and click on the extension names to enable/disable them.
   * Many extensions may already be enabled by default.  This is fine.
 
8. Test your settings so far.  Open a browser and type in "http://localhost:8080".
   If the WampServer screen shows up, then everything is working OK so far.
 
PART 2: INSTALL DRUSH
----------------------------------------------------------------------------------
 
Drush is a simple command-line utility that makes managing your Drupal site easier.
 
Download the recommended version of Drush from http://drupal.org/project/drush .
Many Windows users have problems with the version 4 (at the time of this writing),
so I suggest that you use version 3.  This is the version shown in the video.
Extract the files to the folder of your choice.  For example, extract the folders in
such a way that drush.bat is found in C:\drush\drush.bat .
 
If you are unable to unpack the file, try downloading 7-zip from http://www.7-zip.org/ .



**install Xammp  
**Install Drush
download lasted drush here
https://github.com/drush-ops/drush/releases/
and extract to C:\drush


1. We will install libarchive, gzip, wget, & gtar unix utilities.  Download & install:
http://gnuwin32.sourceforge.net/packages.html

2. bsdtar.exe is more reliable than tar.exe, so copy bsdtar.exe to tar.exe
   C:\Program Files\GnuWin32\bin\bsdtar.exe
   C:\Program Files\GnuWin32\bin\tar.exe
3. Set PATH environment variable to include drush, php, and binaries installed above.
   * Click on the start menu.
   * Right click on "Computer" (My Computer), click on "Properties".
   * Click "Advanced System Settings"
   * On the "Advanced" tab, click the "Environmental Variables..." button.
   * Under "System Variables", edit the "Path" variable, adding the paths to the executables
     for the programs installed above.  Do not remove existing parts of the Path variable.
     Here is an example path addition:
     
;C:\drush;C:\Program Files\GnuWin32\bin;





PART 4: TESTING DRUSH, SETTING UP A DRUPAL WEBSITE.
----------------------------------------------------------------------------------
 
1. Create a database for your website.
   * Open a browser & navigate to "http://localhost:8080".
   * Click on "PHPMyAdmin"
   * In the middle, under "Create a new database", type in a database name that you wish to
     create (ex. "d6test").  Choose the "utf8_general_ci" collation, and click the "Create" button.
 
2. Open a cli (command line interface) window.  In Windows, this is called "Command Prompt".
   * Command Prompt can be found in the Start menu under "Accessories".
   * You can also begin the Command Prompt by opening the Start menu, typing "cmd" into the
     search box, and press enter.
 
3. Navigate to your web root. "cd c:\wamp\www"
 
4. Type "drush" to test that Drush is working.  If Drush is installed correctly, you will see a
   list of available commands.  If "drush" is not recognized, then double-check your path settings
   and re-start the computer.
 
5. Download the version of Drupal that you want by using Drush.  You can see the current recommended
   versions of Drupal by visiting http://drupal.org/project/drupal.  The major version (ex. "6" in
   this example) and the minor version (ex. "19" in this example) may be replaced by newer versions.
   * in the cli, type "drush dl drupal-6.19"
   * if everything is configured correctly, the drupal project will be downloaded and automatically
     unzipped into a folder called "drupal-6.19".
 
6. Rename the folder to an appropriately identifiable name (ex. "d6test").
   * in the cli, type "rename drupal-6.19 d6test"
   * note, I try to keep the database name & the directory the same, which helps when dealing with
     multiple test sites and installations.
 
7. Copy the settings file.  Drupal does not ship with a settings file, but it does ship with a default
   settings file.  This is confusing for beginners, but it helps when upgrading a site.  This step may
   not be necessary if installing Drupal 7
   * in the cli, type the following commands:
     cd d6test\sites\default
     copy default.settings.php settings.php
 
8. Set up the modules and themes directory.  For this, it helps to know a few commands, just in case
   you get lost.  "cd folder_name" will take you into the subfolder named "folder_name".  "cd .." will
   back you out of a folder.
   * cli commands:
     cd ..
   * you should now be in your d6test\sites folder.  now type:
     cd all
     mkdir themes
     mkdir modules
     cd modules
     mkdir contrib
   * you should now have a directory structure that looks like this:
     d6test\sites\all\themes
     d6test\sites\all\modules
     d6test\sites\all\modules\contrib
 
9. Edit your host file to add your new test website.
   Technically, this site could be reached by opening the url http://localhost:8080/d6test .  While
   this approach is not wrong, it could cause problems when migrating to another webhost.  We would
   rather reach the site by typing in something like http://d6test.localhost:8080 or even
   something short like http://d6test:8080 .
   * Open the Start menu and right click on Notepad.
   * Select "Run as Administrator".
   * Click on File > Open.
   * Navigate to C:\Windows\System32\drivers\etc .
   * Select "All Files" in the file type selection box, rather than "Text Documents (.txt)" .
   * Open "hosts".
   * Add a line to represent your new test site.
 
     127.0.0.1 d6test.localhost
 
     * If you would rather have the shorter version, then type this instead:
 
     127.0.0.1 d6.test
 
   * Save the file and close the editor. NOTE: if the file will not save, check that (1) you ran
     Notepad as administrator, and (2) that the file properties have not been set to "Write Protected".
     Also, some anti-virus and anti-spyware interfere with editing the host file, so you may need to
     disable them if you have trouble saving the file.
   * Now, when you type http://d6test.localhost:8080 into your brower address bar (or http://d6test:8080,
     if you chose the shorter version), Windows will re-direct the request to your local system (Apache).
 
10.Edit Apache's httpd.conf file to tell Apache where to find http://d6test.localhost .  We do this
   by adding a VirtualHost entry into the configuration file.  By default, there is already an entry
   for "localhost", however, when we declare our own entry here, the default entry is removed.  To
   fix this, we must redeclare the default "localhost" declaration.  The steps appear below.
   * Click on the WampServer tray icon.
   * Go up to Apache, let it open the secondary menu.
   * Click on httpd.conf to edit.
   * If this is your first time to add a VirtualHost to Apache.  Add the following lines to the end
     of the file:
 
NameVirtualHost 127.0.0.1
 
<VirtualHost 127.0.0.1>
  DocumentRoot "C:\wamp\www"
  ServerName localhost
</virtualHost>
 
   * Now, add a VirtualHost listing for the name you specified in the Windows hosts file. For example:
 
<VirtualHost 127.0.0.1>
  DocumentRoot "C:\wamp\www\d6test"
  ServerName d6test.localhost
</virtualHost>
 
   * Save the file, close the editor, and restart WampServer.
   * Open a browser and type go to the url for your site: http://d6test.localhost:8080 .  It should
     redirect you to the installation page.
 
11.Follow the few steps to install Drupal.
   * You probably don't need to worry about the advanced database settings.
   * We didn't set up any database users, so you have to use the default mysql username and password.
     The default username is "root", and the password field should be left empty.  Note, that on a
     live site, this would be a bad security practice.   It doesn't really matter on a private
     development environment.
   * After creating the first account, you will probably see an error that says the the system could not
     send out an e-mail.  This is normal, because we did not install an e-mail server.  If this were
     taking place on a live server, then the e-mail probably would have sent without incident.
 
PART 5: USING DRUSH TO QUICKLY DOWNLOAD AND INSTALL MODULES.
----------------------------------------------------------------------------------
 
Drupal has many contrib modules (http://drupal.org/project/modules) and themes
(http://drupal.org/project/themes) that can be used to enhance the functionality and user experience of
your site.  Modules and themes may be downloaded and extracted into the appropriate folder, but this can
be time consuming when you need to download a lot of modules and install them quickly.  Drush can do this
easily.  Drush will save the modules and themes to the appropriate folder (sites/all/modules/contrib for
modules, and sites/all/themes for themes), as long as drush is invoked while within the folder or subfolder
of the Drupal installation.
 
By way of example, we will download and enable the following helpful modules: cck, views, admin, devel
 
drush dl cck views admin devel
drush en -y content views views_ui admin devel
 
As you can see, the "dl" command takes the project name (such as cck), but "en" requires specific module
names, which may or may not be the same as the project name (such as "content" being the base module of
cck.  Remember that projects can also have multiple modules in them (such as views and views_ui within
the views project).  Remember that all modules are listed on the Module admin page.
 
PART 6: OTHER TOOLS.
----------------------------------------------------------------------------------
 
If you write custom modules, then you may need a text editors for coding.
http://www.eclipse.org/pdt/
 
If you wish to be able to easily create & test patches as well as use a version control system, then I
suggest you try cygwin.
http://www.cygwin.com/
http://drupal.org/node/181837
