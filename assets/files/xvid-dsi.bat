ffmpeg -i %1 -f avi -r 12 -vf "scale=256:-2" -b 512k -bt 64k -vcodec libxvid -acodec libmp3lame -ar 32000 -ab 96k -ac 2 %1_dsi.avi