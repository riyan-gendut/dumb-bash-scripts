#!/bin/bash
oldlrg=$1
newsml=$2
cd $oldlrg
for f in *.jpg ; do
echo $(stat -c '%n' "$f")
rsync --max-size=$(stat -c '%s' "$f") "$newsml/$f" "$oldlrg/$f" && rm "$newsml/$f"
done
for f in *.jpeg ; do
echo $(stat -c '%n' "$f")
rsync --max-size=$(stat -c '%s' "$f") "$newsml/$f" "$oldlrg/$f" && rm "$newsml/$f"
done
for f in *.png ; do
echo $(stat -c '%n' "$f")
rsync --max-size=$(stat -c '%s' "$f") "$newsml/$f" "$oldlrg/$f" && rm "$newsml/$f"
done
