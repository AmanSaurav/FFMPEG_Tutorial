# 20th sec upto 55th sec (duration 35 sec)

ffmpeg -i 1min_timer.mp4 -ss 00:00:20 -to 00:00:55 20to55to.mp4

ffmpeg -hide_banner -loglevel info -i 1min_timer.mp4 -ss 00:00:20 -t 00:00:35 20to55t.mp4
