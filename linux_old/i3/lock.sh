#!/bin/bash

# OUTPUT_IMAGE=/tmp/i3lock.png

IMAGE="$(ls /home/dooley/wall/ | shuf -n 1)"

RESOLUTION=$(xrandr -q | awk -F'current' -F',' 'NR==1 {gsub("( |current)","");print $2}')

convert /home/dooley/wall/$IMAGE -resize $RESOLUTION^ -gravity center -extent $RESOLUTION /tmp/$IMAGE

OUTPUT_IMAGE="/tmp/$IMAGE"

TIME_TEXT=""

currenttime=$(date +%H:%M)
if [[ "$currenttime" > "06:00" ]] && [[ "$currenttime" < "12:00" ]]; then
  TIME_TEXT="Good morning, $USER"
elif [[ "$currenttime" > "12:00" ]] && [[ "$currenttime" < "16:00" ]]; then
  TIME_TEXT="Good afternoon, $USER"
elif [[ "$currenttime" > "16:00" ]] && [[ "$currenttime" < "21:00" ]]; then
  TIME_TEXT="Good evening, $USER"
else
  TIME_TEXT="Good night, $USER"
fi

# ffmpeg -loglevel quiet -f x11grab -video_size $RESOLUTION -i $DISPLAY -filter_complex "gblur=40, eq=brightness=-.04" -y -vframes 1 $OUTPUT_IMAGE

lock() {
	letterEnteredColor=d23c3dff
	letterRemovedColor=d23c3dff
	passwordCorrect=00000000
	passwordIncorrect=d23c3dff
	background=00000022
	foreground=ffffffff
	i3lock \
		-t -i "$OUTPUT_IMAGE" \
  		--timepos="x+400:h-120" \
		--datepos="x+400:h-60" \
		--greeterpos="x+400:h-270" \
		--indpos="x+825:h-178" \
		--timesize=162 \
		--datesize=26 \
		--greetersize=26 \
		--time-font="IBM Plex Sans Condensed Thin" \
		--date-font="IBM Plex Mono Text" \
		--greeter-font="IBM Plex Mono Text" \
		--radius=60 \
		--greetertext="$TIME_TEXT" \
		--timestr="%I:%M %p" \
		--clock \
		--insidecolor=$background \
		--ringcolor=$foreground \
		--line-uses-inside \
		--keyhlcolor=$letterEnteredColor \
		--bshlcolor=$letterRemovedColor \
		--separatorcolor=$background \
		--insidevercolor=$passwordCorrect \
		--insidewrongcolor=$passwordIncorrect \
		--ringvercolor=$foreground \
		--ringwrongcolor=$foreground  \
	 	--veriftext="" --wrongtext="" \
		--verifcolor="$foreground" \
		--timecolor="$foreground" \
		--datecolor="$foreground" \
		--greetercolor="$foreground" \
        	--noinputtext="" \
		--force-clock
}

lock

#i3lock \
#  -i $OUTPUT_IMAGE \
#  --timepos="x-90:h-20" \
#  --datepos="tx+24:ty+25" \
#  --clock --datestr "Type password to unlock..." \
#  --insidecolor=00000000 --ringcolor=ffffffff --line-uses-inside \
#  --keyhlcolor=d23c3dff --bshlcolor=d23c3dff --separatorcolor=00000000 \
#  --insidevercolor=fecf4dff --insidewrongcolor=d23c3dff \
#  --ringvercolor=ffffffff --ringwrongcolor=ffffffff --indpos="x+290:h-120" \
#  --radius=20 --ring-width=3 --veriftext="" --wrongtext="" \
#  --textcolor="ffffffff" --timecolor="ffffffff" --datecolor="ffffffff"

rm $OUTPUT_IMAGE

wpg -a /home/dooley/wall/$IMAGE
wpg -ns $IMAGE
wal -i /home/dooley/wall/$IMAGE
