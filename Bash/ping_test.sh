#!/bin/bash
now=$(date +"%Y.%m.%d.%S.%N")
ping www.google.com -c 5 > "ping_edurom.$now.log"
