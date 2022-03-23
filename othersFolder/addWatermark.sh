Watermark in FFmpeg

ffmpeg -i inputVideo -i watermark-tr -i watermark-tl -i watermark-br -i watermark-bl 
       -filter_complex "[0][1]overlay=x=W-w:y=0[tr];
                        [tr][2]overlay=x=0:y=0[tl];
                        [tl][3]overlay=x=W-w:y=H-h[br];
                        [br][4]overlay=x=0:y=H-h"  outputfile

filter1=x=10:y=20;
filter2=x=30:y=40;