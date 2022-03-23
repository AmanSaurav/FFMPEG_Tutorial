ffmpeg -hide_banner -loglevel info -i sampleinput.mp4 -vf drawtext="\text='B': fontcolor=white: fontsize=72: box=1: boxcolor=black@0.5: \boxborderw=5: x=W/2: y=H/2" -codec:a copy VidB_t.mp4 -y;
ffmpeg -hide_banner -loglevel info -i sampleinput.mp4 -vf drawtext="\text='C': fontcolor=white: fontsize=72: box=1: boxcolor=black@0.5: \boxborderw=5: x=W/2: y=H/2" -codec:a copy VidC_t.mp4 -y;
ffmpeg -hide_banner -loglevel info -i sampleinput.mp4 -vf drawtext="\text='D': fontcolor=white: fontsize=72: box=1: boxcolor=black@0.5: \boxborderw=5: x=W/2: y=H/2" -codec:a copy VidD_t.mp4 -y;
