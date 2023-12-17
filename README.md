# The story so far
* ***irresponsiblyrecode.sh*** : a script that would find every files in the current active directory and **all the subdirectory/ies *(!!!)*** and use ffmpeg to transcode all compatible files into x265 HEVC mp4.
* ***clickbast.sh*** : a script that takes a number as command line arguments and use xdotool to repeat a very specific sequence of mouse movements and clicks. I will not elaborate.
* ***massresize.sh*** : a script that finds every jpg and png file in the current active directory (but not subdirectory) and then use ffmpeg to resize their short side to 1000 pixel while maintaining aspect ratio. note that this will enlarge smaller images.
