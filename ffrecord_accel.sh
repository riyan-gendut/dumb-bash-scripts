#!/bin/bash
reslt="$1"
if [[ $# -lt 2 ]]; then
	echo "Currently Recording One Minute of Video"
	ffmpeg -framerate 30 -re -f x11grab -s 1366x768 -thread_queue_size 1024 -vaapi_device /dev/dri/renderD128 -i :0.0 -t 01:00 -vf 'format=nv12,hwupload' -c:v h264_vaapi ~/Videos/"$reslt"".mp4"
else
	audc="$2"
	echo "Currently Recording One Minute of Video and Audio"
	ffmpeg -framerate 30 -re -f x11grab -s 1366x768 -thread_queue_size 1024 -vaapi_device /dev/dri/renderD128 -i :0.0-f pulse -i $audc -ar 44100 -ac 1 -t 01:00 -vf 'format=nv12,hwupload' -c:v h264_vaapi ~/Videos/"$reslt"".mp4"
fi
