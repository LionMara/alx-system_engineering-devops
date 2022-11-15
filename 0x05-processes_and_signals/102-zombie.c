#!/usr/bin/env bash
#  Bash script that does :
#  Creates the file /var/run/myscript.pid containing its PID
#  Displays To infinity and beyond indefinitely
#  Displays I hate the kill command when receiving a SIGTERM signal
#  Displays Y U no love me?! when receiving a SIGINT signal
#  Deletes the file /var/run/myscript.pid
#+ and terminates itself when receiving a SIGQUIT or SIGTERM signal

trap "echo I hate the kill command; exit" SIGTERM
trap "echo Y U no love me?!" SIGINT
trap "exit" SIGQUIT

echo $$ > /var/run/myscript.pid

while true
do
    echo "To infinity and beyond"
    sleep 10
done
