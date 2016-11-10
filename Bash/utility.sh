#!/usr/bin/env bash

# Zip a folder in single archive
for i in */; do zip -r "${i%/}.zip" "$i"; done


#Module installed
python -c "help('modules')"

#Zen of Python
python -c 'import this'

#Stop pdflatex from asking questions.
pdflatex -halt-on-error

#Return number of human
curl -s http://www.census.gov/popclock/data/population/world | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["world"]["population"]'

#Star War film
telnet towel.blinkenlights.nl#

#Create a CD/DVD ISO image from disk
readom dev=/dev/scd0 f=/path/to/image.iso

#Popup message for Gnome and Unity
zenity --error --text 'Hi Fundor333!'
zenity --info --text 'Hi Fundor333!'
zenity --warning --text 'Hi Fundor333!'
