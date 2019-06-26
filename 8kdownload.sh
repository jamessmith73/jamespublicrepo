#!/bin/bash
# call this to download 4k or 8k
echo "Downloading Max Resolution  -------------------------------------------------------- "

#yt4kurls.txt

terminal=`tty`
exec < yt4kurls.txt

while read -r line
do
    echo "-------------------------------------- Video url is $line =============================== "
    youtube-dl -f 'bestvideo[ext=webm]+bestaudio[ext=m4a]/mp4' "$line"
done
exec < "$terminal"

mv *.mkv 8kmovies/
exit

#create a file named yt4kurls.txt , this should be in same dir as the shell script, example below
#https://www.youtube.com/watch?v=ZkofUXbwGDs
#https://www.youtube.com/watch?v=S_dfq9rFWAE
#https://www.youtube.com/watch?v=JkKBAuGwmms
#https://www.youtube.com/watch?v=ISJMsVhY5Yk
# ./8kdownload.sh
#Ensure that youtube-dl is installed from https://ytdl-org.github.io/youtube-dl/index.html
