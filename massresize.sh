#!/bin/bash
mkdir ~/tmpimg
for f in *.jpg *.jpeg *.JPG *.png *.webp; do
ffmpeg -i "$f" -vf scale="1000:1000:force_original_aspect_ratio=increase" ~/tmpimg/"$f"
done
