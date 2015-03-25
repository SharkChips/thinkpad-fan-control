# thinkpad-fan
An automated fan control daemon for ThinkPads

<h4>OVERVIEW</h4>

 thinkpad-fan controls your ThinkPad's fan. It will set your fan to different levels depending on the temperature of your ThinkPad.
 
<h4>INSTALLATION</h4>

 1. Download a .zip of thinkpad-fan from GitHub
 
 2. Unzip it to a directory
 
 3. For thinkpad-fan to work, you will need to create a file in "/etc/modprobe.d/" named "thinkpad_acpi.conf"
 
 4. Add the following line to "thinkpad_acpi.conf"
 
    options thinkpad_acpi fan_control=1
 
 5. Take a look at (and modify if needed) the file at "<your_unzipped_directory>/fand.conf". THIS IS NOT THE FINAL CONFIG FILE!! After you install thinkpad-fan, the 	   config file will be located at "/etc/fand.conf".
 
 6. Run the install.sh script as root. For example:
    
    cd <your_unzipped_directory>
    sudo ./install.sh
    
 7. Follow the instructions in the install script.
 
 8. Reboot.
 
<h4>USAGE</h4>

 1. Install the program
 
 2. Configure it as you desire. Configuration information in the "/etc/fand.conf" (after you have installed it), or in "<your_unzipped_directory>/fand.conf" (if you
    have not installed it yet). Remember, once you install the program the config file WILL NOT be in "<your_unzipped_directory>/fand.conf". It will be in "/etc/fand.conf"!!
    
 3. Enjoy!
 
<h4>TROUBLESHOOTING</h4>

 Permission Denied errors:
   This may mean that either the "fand" process isn't running as root, or something else is wrong. Make sure that you are running the script as root.
   
 Cannot find file errors:
   This may mean that either your computer's fan control files or your computer's temperature files do not exist in the place thinkpad-fan looks in.
   Please locate the right file(s) and manually edit the "fand" script.
   Are you sure your computer is really a ThinkPad?
 
<h4>ISSUES</h4>

Please report issues to: albertzhang66@outlook.com

Thanks!!