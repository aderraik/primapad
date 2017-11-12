#!/bin/bash

SERVER_PORT=80
PRIMAPAD_HOME=/root/primapad
LOG_FILE=/var/log/primapad.log
PID_FILE=/run/primapad.pid
VERSION=0.1

java \
	-Dgrails.env=prod \
	-Dserver.port=$SERVER_PORT \
	-jar $PRIMAPAD_HOME/build/libs/primapad-$VERSION.war \
	-server -Xmx768M -XX:MaxPermSize=256m \
	 > $LOG_FILE 2>&1 & \
	 echo $! > $PID_FILE

exit 0

