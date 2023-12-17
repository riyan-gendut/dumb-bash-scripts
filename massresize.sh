#!/bin/bash
mkdir ~/tmpimg
for f in *.jpg ; do
ffmpeg -i "$f" -vf scale="1000:1000:force_original_aspect_ratio=increase" "~/tmpimg/$f"
done
for f in *.jpeg ; do
ffmpeg -i "$f" -vf scale="1000:1000:force_original_aspect_ratio=increase" "~/tmpimg/$f"
done
for f in *.png ; do
ffmpeg -i "$f" -vf scale="1000:1000:force_original_aspect_ratio=increase" "~/tmpimg/$f"
done
