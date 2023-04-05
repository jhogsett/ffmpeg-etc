for %%a in (*.rm) do ffmpeg -y -i "%%a" -crf 18 -threads 16 ".\%%~na.mp4"
