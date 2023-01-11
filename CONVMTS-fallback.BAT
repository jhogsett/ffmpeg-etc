for %%a in (*.mts) do ffmpeg -y -i "%%a" -ac 2 -crf 18 -threads 16 "%%~na.mp4"
