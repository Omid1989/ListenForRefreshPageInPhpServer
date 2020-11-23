#!/bin/bash

URL='localhost:8002'
target_dir=""
path=$(which xdg-open || which gnome-open) && exec "$path" "http://$URL" &
php -S $URL public/index.php &
inotifywait -m -e CLOSE_WRITE \
         ./* ./*/*|
while read filename
do
  echo $filename
  keystroke="CTRL+F5"
# set to whatever's given as argument, defaults to firefox
  BROWSER="${1:-firefox}"
# find all visible browser windows
  browser_windows="$(xdotool search --sync --all --onlyvisible --name ${BROWSER})"
# Send keystroke
  for bw in $browser_windows; do
     xdotool key --window "$bw" "$keystroke" 
   done
done


