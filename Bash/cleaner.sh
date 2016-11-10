#!/usr/bin/env bash

apt-get update &&
apt-get dist-upgrade -y --show-progress &&
apt-get autoremove -y &&
apt-get check &&
apt-get autoclean -y