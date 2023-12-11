#!/bin/bash
ko=$1
for (( i=0; i<ko; i++ )) ; do
sleep .5 && xdotool mousemove 1187 722 click 1 sleep .5 mousemove 683 409 click 1 sleep 2 mousemove 683 722 click 1 sleep 1;
done
