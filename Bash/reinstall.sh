#!/usr/bin/env bash
add-apt-repository ppa:n-muench/programs-ppa
add-apt-repository ppa:noobslab/apps

apt-get update

# apt-get install --yes openbox obconfig obmenu tint2 nitrogen xscreensaver

# Bash software command
apt-get install --yes curl
apt-get install --yes wget
apt-get install --yes dpkg
apt-get install --yes tar
apt-get install --yes nano
apt-get install --yes zsh

# Bash software
apt-get install --yes openssh-client
apt-get install --yes ffmpeg
apt-get install --yes git git-core git-svn
apt-get install --yes git-flow

# Develop dependency
apt-get install --yes build-essential

# Python
apt-get install --yes python-pip python-dev
pip install --yes --upgrade pip virtualenv requests Flask TkInter PyQt jupyter twython

# Java stuff
apt-get install default-jdk

# Other languages
apt-get install --yes scala
apt-get install --yes golang
apt-get install --yes ruby
apt-get install --yes gcc

# Atom dipendency
curl -sL https://deb.nodesource.com/setup_5.x | bash -
apt-get install --yes nodejs

# Atom install
wget https://atom.io/download/deb -O atom.deb
dpkg -i atom.deb

# Git Configuration
git config --global user.name #TODO CHANGE THE USERNAME
git config --global user.email #TODO CHANGE THE MAIL
git config --global core.editor atom

# LaTeX stuff
apt-get install --yes texlive texlive-binaries texlive-fonts-recommended texlive-generic-recommended texlive-latex-base texlive-lang-italian texlive-latex-extra texlive-latex-recommended texlive-pictures
apt-get install --yes texmaker

# Other software
apt-get install --yes filezilla
apt-get install --yes thunderbird
apt-get install --yes telegram-desktop
apt-get install --yes mutt
apt-get install --yes vlc libdvdcss2
apt-get install --yes calibre
apt-get install --yes hexchat
apt-get install --yes docker-engine

#Anding updating and cleaning
apt-get update
apt-get upgrade
apt-get autoclean

# Terminating all
echo "We made it!"
curl -L http://git.io/unix
