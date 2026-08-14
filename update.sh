#!/usr/bin/env bash

echo "Updating dropbox"

rsync -a -v -z --progress --delete --exclude-from=.rsyncignore-dropbox "$(pwd)/" "/home/alyx/Dropbox/CandyBeast 1.20.1 X/"

echo "Uploading to server"

rsync -a -v -z --progress --delete --exclude-from=.rsyncignore-server "$(pwd)/" "candybeast:~/1.20.1/"


echo "Signing in to remote server"

read -p "Enter username to switch to: " USERNAME

ssh -t candybeast "su - $USERNAME -c 'bash /home/ephys/1.20.1/update-remote.sh';"