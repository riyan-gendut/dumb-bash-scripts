#!/bin/bash
echo beginning to go through files | cat > lists.txt;
for j in {0..4}; do
for i in {0..9}; do
k=0;
echo -n -e "\n $j$k$i, " >> lists.txt; find . -type f -name "$j$k$i.*" -exec bash -c 'file="$1"; sez=$(stat -c '%s' "$file"); echo -n $sez\ >> lists.txt' _ {} \;
done
for i in {10..99}; do
echo -n -e "\n $j$i, " >> lists.txt; find . -type f -name "$j$i.*" -exec bash -c 'file="$1"; sez=$(stat -c '%s' "$file"); echo -n $sez\ >> lists.txt' _ {} \;
done
done
