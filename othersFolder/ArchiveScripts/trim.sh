# 1 min video
# remove the 1st 10 sec

# slow 
ffmpeg -i 1min_timer.mp4 -ss 10 10toend_slow.mp4
# fast
ffmpeg -i 1min_timer.mp4 -ss 10 -c copy 10toend_fast.mp4

# remove the last 10 sec  0 sec to 50 sec

# slow
ffmpeg -hide_banner -loglevel info -i 1min_timer.mp4 -t 50 0to50slow.mp4
# fast
ffmpeg -hide_banner -loglevel info -i 1min_timer.mp4 -t 50 -c copy 0to50fast.mp4

# remove the first 5 sec and also remove last 15 sec  ( 5sec - 45 sec ) duration 40 sec

# -t
ffmpeg -hide_banner -loglevel info -i 1min_timer.mp4 -ss 5 -t 40 5to45t.mp4

# -to 
ffmpeg -hide_banner -loglevel info -i 1min_timer.mp4 -ss 5 -to 45 5to45to.mp4






