#!/bin/bash
input=1min.mp4
duration=$(ffprobe -loglevel error -show_entries format=duration -of default=nw=1:nk=1 "$input")
# ffmpeg -i "$input" -vf "drawtext=fontfile=OpenSans-Regular.ttf:text='%{eif\:$duration-t\:d}':fontcolor=white:fontsize=24:x=w-tw-20:y=th:box=1:boxcolor=black@0.5:boxborderw=10,format=yuv420p" -c:v libx264 -c:a copy -movflags +faststart 1mintimer.mp4
ffmpeg -i "$input" -vf "drawtext=fontfile=OpenSans-Regular.ttf:text='%{eif\:t\:d}':fontcolor=white:fontsize=24:x=w-tw-20:y=th:box=1:boxcolor=black@0.5:boxborderw=10,format=yuv420p" -c:v libx264 -c:a copy -movflags +faststart 1mintimerrev.mp4