#!/bin/bash

SERVER_PORT=80
PRIMAPAD_HOME=/root/primapad

java \
	-Dgrails.env=prod \
	-Dserver.port=$SERVER_PORT \
	-jar $PRIMAPAD_HOME/build/libs/primapad-0.1.war \
	-server -Xmx768M -XX:MaxPermSize=256m \
	 > /var/log/primapad.log 2>&1 & \
	 echo $! > /run/primapad.pid

exit 0

