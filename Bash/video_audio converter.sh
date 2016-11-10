#!/bin/bash

for vid in *.mp4
  do ffmpeg -i "$vid" -vn -acodec libmp3lame "${vid%.mp4}.mp3"
done
