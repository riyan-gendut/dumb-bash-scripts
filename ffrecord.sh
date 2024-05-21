#!/bin/bash
reslt="$1"
echo "Currently Recording One Minute of Video"
fmpeg -framerate 15 -re -f x11grab -s 1366x768 -thread_queue_size 1024 -t 01:00 -i :0.0 ~/Videos/"$reslt"".mp4"
