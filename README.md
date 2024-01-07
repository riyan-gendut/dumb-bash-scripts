# The story so far

* ***irresponsiblyrecode.sh*** : a script that would find every files in the current active directory and ***all the subdirectory/ies* (⚠️⚠️⚠️)** and use ffmpeg to transcode all compatible files into x265 HEVC mp4.

* ***clickbast.sh*** : a script that takes a number as command line arguments and use xdotool to repeat a very specific sequence of mouse movements and clicks. I will not elaborate.

* ***massresize.sh*** : a script that finds every jpg and png file in the current active directory (but not subdirectory) and then use ffmpeg to resize their short side to 1000 pixel while maintaining aspect ratio. note that this will enlarge smaller images.

* ***counting.sh*** : a script that goes from 001 to 499, prints the number to a file, and if it finds a file with the number on the filename appends the filesize after the number. the resulting text file should perhaps be csv. combined with a spreadsheet software to sort through it, it's useful for finding missing file among 499 numbered files.

* ***copysmlupdt.sh*** : a script that takes two path as an argument, finds every jpg and png file on the first path, and then uses rsync to copy the same files from the second path into the first IF the file on the second path are smaller than the first path. on second thought I could've probably do some bash math and use mv instead of rsync. maybe I'll do that on `copysmlupdtupdt` or smth.
