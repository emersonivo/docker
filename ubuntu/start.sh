#/bin/bash

echo "Starting dbus:"
sudo /etc/init.d/dbus start

echo "dbus status:"
sudo /etc/init.d/dbus status

if [[ "$( sudo /etc/init.d/dbus status | grep 'dbus is not running')" ]]; then
    echo "dbus not started. Exiting"
else    
    if [[ "$(id | grep 'root')" ]]; then
        echo "root user. Exiting"
    else
        /usr/bin/google-chrome-stable --no-remote https://mydesk.morganstanley.com
    fi  
fi  
