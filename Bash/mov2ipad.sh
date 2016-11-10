#!/bin/bash
# Script to convert all the .MOV files in the current
# directory to "Universal Apple".MP4 format

# Tested on  Src:Canon S95 -> Destn: iPad2 using ffmpeg installed 
# via homebrew: brew install ffpmeg --use-gcc
                      
# Pradeep Gowda <pradeep@btbytes.com>
# 2011-12-25
# License: Public Domain or GPLv3
 
for ff in *.MOV; 
do
    filename=$(basename $ff)
    extension=${filename##*.}
    filename=${filename%.*}
    ffmpeg -i ${ff} -threads 0 -strict experimental -f mp4 -vcodec libx264  -vpre ipod640 -b 1200k -acodec aac -ab 160000 -ac 2 -s 1280x720 ${filename}.apple.mp4
done
