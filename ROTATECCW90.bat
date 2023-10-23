for %%a in (*.mp4) do ffmpeg -y -i "%%a" -vf "transpose=2" -crf 18 -threads 16 "%%~na-CCW90.mp4"
