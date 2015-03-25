#! /bin/bash

#finds working dir
WORKINGDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

#asks if you have modified the config
echo "Have you already looked at and modified (if necessary) the config file found in $WORKINGDIR/fand.conf?"
echo "Please type either 1 or 2"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) echo "It is reccomended that you first edit the config file before you install."
             echo "If you choose not to, you can edit the config file later at /etc/fand.conf"
             echo "If you would not like to edit the config file, you can safely run the"
             echo "install script again and type 1 at this prompt."
             exit 1;;
    esac
done

# Check to see if we are running as root first.
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

#copies fand to sbin
cp $WORKINGDIR/bin/fand /usr/sbin/fandaemon
#copies startfand to /etc/init.d/
cp $WORKINGDIR/bin/startfand /etc/init.d/fand
#copies the settings file
cp $WORKINGDIR/fand.conf /etc/fand.conf
#sets service to autoload
update-rc.d fand defaults
#