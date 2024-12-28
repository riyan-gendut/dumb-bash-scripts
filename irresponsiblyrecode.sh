#!/bin/bash
dewit(){
#THIS WILL RECODE EVERY FILE IN CURRENT DIRECTORY AND ITS SUBDIRECTORY TO x265. USE AT YOUR OWN RISK.
mkdir ~/vtout/
find . -type f -name "*.mp4" -exec bash -c 'file="$1"; echo $(stat -c '%n' "$file") $(stat -c '%s' "$file"); ffmpeg -n -i "$file" -c:v libx265 -vtag hvc1 ~/vtout/"$file"' _ {} \;
find . -type f -not -name "*.mp4" -exec bash -c 'file="$1"; echo $(stat -c '%n' "$file") $(stat -c '%s' "$file"); ffmpeg -n -i "$file" -c:v libx265 -vtag hvc1 ~/vtout/"$file".mp4' _ {} \;
}

echo "THIS WILL TRANSCODE EVERY FILE IN CURRENT DIRECTORY AND ITS SUBDIRECTORY/IES TO x265. USE AT YOUR OWN RISK."
read -p "Are you sure you're in the right directory? (y/n)" yn
case $yn in
	['y''Y'] ) dewit; exit;;
	['n''N'] ) echo "Wise decision."; exit;;
	* ) echo "Invalid."; exit;;
esac

