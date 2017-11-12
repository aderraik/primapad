#!/bin/bash

PID_FILE=/run/primapad.pid

# ----------------------------
# Do it
# ----------------------------
echo -n 'Stopping '
if [[ -f $PID_FILE ]]; then
	mypid=`cat $PID_FILE`;
	# Send a SIGINT signal to stop
	kill -2 $mypid;
	while [[ `ps -p $mypid > /dev/null;echo $?` -eq '0' ]]; do 
		echo -n '.'; 
		sleep 1; 
	done
	rm -f $PID_FILE;
fi

echo ' Done!'

