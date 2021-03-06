# thinkpad-fan
An automated fan control daemon for ThinkPads

#### OVERVIEW
`thinkpad-fan` controls your ThinkPad's fan speed. It will set your fan to different levels depending on the temperature of your ThinkPad.
 
#### INSTALLATION
1. Download a .zip of thinkpad-fan from GitHub
 
2. Unzip it to any directory
 
3. For `thinkpad-fan` to work, you will need to create a file in `/etc/modprobe.d/` named `thinkpad_acpi.conf`
 
4. Add the following line to `thinkpad_acpi.conf`
```
options thinkpad_acpi fan_control=1
```
5. Take a look at (and modify if needed) the file at `<your_unzipped_directory>/fand.conf`. After you install `thinkpad-fan`, the config file will be located at `/etc/fand.conf`.
 
6. Run the `install.sh` script as root. For example:
```bash  
cd <your_unzipped_directory>
sudo ./install.sh
```
7. Follow the instructions in the install script.
 
8. Reboot.
 
#### USAGE
1. Install the program

2. Configure it as you desire. Configuration information in the `/etc/fand.conf` (after you have installed it), or in `<your_unzipped_directory>/fand.conf` (if you have not installed it yet). Remember, once you install the program the config file WILL NOT be in `<your_unzipped_directory>/fand.conf`. It will be in `/etc/fand.conf`!
    
3. Enjoy!
 
#### TROUBLESHOOTING
 - Permission Denied errors
     - This may mean that either the `fand` process isn't running as root, or something else is wrong. Make sure that you are running the script as root.
   
 - Cannot find file errors:
     - This may mean that either your computer's fan control files or your computer's temperature files do not exist in the place `thinkpad-fan` is looking. Please locate the right file(s) and manually edit the `fand` script.
     - Are you sure your computer is really a ThinkPad?
 
#### ISSUES
If you run into any issues with `thinkpad-fan`, please let me know! GitHub issue reports and pull requests are greatly appreciated.

#### LICENSE
`thinkpad-fan` is open source software. Please see the LICENSE file for more details.
