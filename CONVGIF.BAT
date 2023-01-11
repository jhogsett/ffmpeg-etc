for %%a in (*.mp4) do ffmpeg -y -i "%%a" -threads 4 "%%~na.gif"
