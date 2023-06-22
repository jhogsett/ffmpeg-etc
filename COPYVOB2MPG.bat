for %%a in (*.vob) do ffmpeg -y -i "%%a" -c:v copy -strict 2 -threads 4 "%%~na.mpeg"
