# commandlinefu.com - questions/comments: tech@commandlinefu.com

# Print random emoji in terminal
printf "\U$(printf '%x' $((RANDOM%79+128512)) )"

# easily strace all your apache processes
ps auxw | grep -E 'sbin/(apache|httpd)' | awk '{print"-p " $2}' | xargs strace -F

# Download all files from podcast RSS feed
curl http://url/rss | grep -o '<enclosure url="[^"]*' | grep -o '[^"]*$' | xargs wget -c

# Retry the previous command until it exits successfully
until !!; do :; done

# save command output to image
ifconfig | convert label:@- ip.png

# GRUB2: set Super Mario as startup tune
echo "GRUB_INIT_TUNE=\"1000 334 1 334 1 0 1 334 1 0 1 261 1 334 1 0 1 392 2 0 4 196 2\"" | sudo tee -a /etc/default/grub > /dev/null && sudo update-grub

# Figure out what shell you're running
echo $0

# Terrorist threat level text
echo "Terrorist threat level: `sed $(perl -e "print int rand(99999)")"q;d" /usr/share/dict/words`"

# send a circular
echo "dear admin, please ban eribsskog" | wall

# Bind a key with a command
bind -x '"\C-l":ls -l'

# Visit wikileaks.com
echo 213.251.145.96 wikileaks.com >>/etc/hosts

# Broadcast your shell thru ports 5000, 5001, 5002 ...
script -qf | tee >(nc -kl 5000) >(nc -kl 5001) >(nc -kl 5002)

# pretend to be busy in office to enjoy a cup of coffee
cat /dev/urandom | hexdump -C | grep "ca fe"

# Show numerical values for each of the 256 colors in bash
for code in {0..255}; do echo -e "\e[38;05;${code}m $code: Test"; done

# Makes the permissions of file2 the same as file1
chmod --reference file1 file2

# Recursively remove all empty directories
find . -type d -empty -delete

# output your microphone to a remote computer's speaker
arecord -f dat | ssh -C user@host aplay -f dat

# Exclude .svn, .git and other VCS junk for a pristine tarball
tar --exclude-vcs -cf src.tar src/

# Simulate typing
echo "You can simulate on-screen typing just like in the movies" | pv -qL 10

# Remove duplicate entries in a file without sorting.
awk '!x[$0]++' <file>

# Easy and fast access to often executed commands that are very long and complex.
some_very_long_and_complex_command # label

# convert unixtime to human-readable
date -d @1234567890

# check open ports
lsof -Pni4 | grep LISTEN

# Matrix Style
tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"

# Send pop-up notifications on Gnome
notify-send ["<title>"] "<body>"

# AD: Diff 2 entire servers at ScriptRock.com
