#!/bin/bash
opcopsml(){
file="$1"
oldlrgf="$2"
newsmlf="$3"
echo $file "Old:" $(stat -c '%s' "$oldlrgf/$file") "New:" $(stat -c '%s' "$newsmlf/$file")
if [[ $(stat -c '%s' "$oldlrgf/$file") -gt $(stat -c '%s' "$newsmlf/$file") ]]; then
	echo "Moving file."
	mv "$newsmlf/$file" "$oldlrgf/$file"
else
	echo "Keeping file."
fi
}

oldlrg="$1"
newsml="$2"
cd "$oldlrg"
for f in *.* ; do
opcopsml "$f" "$oldlrg" "$newsml"
done
