#transpose, rotate, flip

# Flip

# Horizontal flip - mirror image - mirror was vertical

ffmpeg -i VidC_t.mp4 -vf hflip -c:a copy C_Hflip_output.mp4


# vertical flip - mirror image, mirror horizontal

ffmpeg -hide_banner -loglevel info -i VidA_t.mp4 -vf vflip -c:a copy A_Vflip_output.mp4

# transpose

ffmpeg -i VidB_t.mp4 -vf 'transpose=0' -c:a copy B_Transpose_0.mp4
ffmpeg -i VidB_t.mp4 -vf 'transpose=1' -c:a copy B_Transpose_1.mp4
ffmpeg -i VidB_t.mp4 -vf 'transpose=2' -c:a copy B_Transpose_2.mp4
ffmpeg -i VidB_t.mp4 -vf 'transpose=3' -c:a copy B_Transpose_3.mp4