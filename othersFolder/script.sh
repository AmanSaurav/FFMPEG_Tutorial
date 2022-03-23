#! bin/bash

# Stack

# Vstack

# ffmpeg -hide_banner -loglevel info -i 'vidA.mp4' -i 'vidB.mp4' -filter_complex "vstack=inputs=2" output_vstack2AB.mp4

# ffmpeg -hide_banner -loglevel info -i 'vidB.mp4' -i 'vidA.mp4' -filter_complex "vstack=inputs=2" output_vstack2BA.mp4

# hstack

# ffmpeg -hide_banner -loglevel info -i 'vidA.mp4' -i 'vidB.mp4' -filter_complex "hstack=inputs=2" output_hstack2AB.mp4 -y;

# ffmpeg -hide_banner -loglevel info -i 'vidB.mp4' -i 'vidA.mp4' -filter_complex "hstack=inputs=2" output_hstack2BA.mp4 -y;



# ffmpeg -i input0 -i input1 -i input2 -i input3 -filter_complex
# "[0]drawtext=text='vid0':fontsize=20:x=(w-text_w)/2:y=(h-text_h)/2[v0];
#  [1]drawtext=text='vid1':fontsize=20:x=(w-text_w)/2:y=(h-text_h)/2[v1];
#  [2]drawtext=text='vid2':fontsize=20:x=(w-text_w)/2:y=(h-text_h)/2[v2];
#  [3]drawtext=text='vid3':fontsize=20:x=(w-text_w)/2:y=(h-text_h)/2[v3];
#  [v0][v1][v2][v3]xstack=inputs=4:layout=0_0|w0_0|0_h0|w0_h0[v]"
# -map "[v]" output

ffmpeg -hide_banner -loglevel info -i 'vidA.mp4' -i 'vidA.mp4' -i 'vidA.mp4' -i 'vidA.mp4' -filter_complex \
"[0]drawtext=text='vid0':fontsize=20:x=(w-text_w)/2:y=(h-text_h)/2[v0];
 [1]drawtext=text='vid1':fontsize=20:x=(w-text_w)/2:y=(h-text_h)/2[v1];
 [2]drawtext=text='vid2':fontsize=20:x=(w-text_w)/2:y=(h-text_h)/2[v2];
 [3]drawtext=text='vid3':fontsize=20:x=(w-text_w)/2:y=(h-text_h)/2[v3];
 [v0][v1][v2][v3]xstack=inputs=4:layout=0_0|w0_0|0_h0|w0_h0[v]" \
-map "[v]" output_drawtext_4by4.mp4



# vflip
# ffmpeg -hide_banner -loglevel info -i "1min_timer.mp4" -vf vflip -c:a copy out_vfip.mp4

# hflip
# ffmpeg -hide_banner -loglevel info -i "1min_timer.mp4" -vf hflip -c:a copy out_hfip.mp4

# Transpose
# 0 - Rotate by 90 degrees counter-clockwise and flip vertically. This is the default. (rotate left and lateral flip)
# 1 - Rotate by 90 degrees clockwise. ( rotate 90 right)
# 2 - Rotate by 90 degrees counter-clockwise. ( rotate 90 left)
# 3 - Rotate by 90 degrees clockwise and flip vertically. (rotate right and lateral flip)


# "transpose=1"

# ffmpeg -hide_banner -loglevel info -i "1min_timer.mp4" -vf "transpose=0" -c:a copy out_tran0.mp4;
# ffmpeg -hide_banner -loglevel info -i "1min_timer.mp4" -vf "transpose=1" -c:a copy out_tran1.mp4;
# ffmpeg -hide_banner -loglevel info -i "1min_timer.mp4" -vf "transpose=2" -c:a copy out_tran2.mp4;
# ffmpeg -hide_banner -loglevel info -i "1min_timer.mp4" -vf "transpose=3" -c:a copy out_tran3.mp4;




