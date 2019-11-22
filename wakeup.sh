#!/bin/bash

######

# Setup (https://stackoverflow.com/a/13372744)

# make sure script is executable by all users: chmod a+x /path/to/executable/script.sh

# create a file: ~/Library/LaunchAgents/com.user.loginscript.plist

# <?xml version="1.0" encoding="UTF-8"?>
# <!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
# <plist version="1.0">
# <dict>
#    <key>Label</key>
#    <string>com.user.loginscript</string>
#    <key>ProgramArguments</key>
#    <array><string>/path/to/executable/script.sh</string></array>
#    <key>RunAtLoad</key>
#    <true/>
# </dict>
# </plist>

# run: launchctl load ~/Library/LaunchAgents/com.user.loginscript.plist

# logout and login to test or run directly: launchctl start com.user.loginscript

# tail /var/log/system.log for error messages

######

# restart docker to get that performance boost
docker stop $(docker ps -a -q)
killall Docker && open /Applications/Docker.app
sleep 60
docker start $(docker ps -a -q)

