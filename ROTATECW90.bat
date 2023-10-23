for %%a in (*.mp4) do ffmpeg -y -i "%%a" -vf "transpose=1" -crf 18 -threads 16 "%%~na-CW90.mp4"
