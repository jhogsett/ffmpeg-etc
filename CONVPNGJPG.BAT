for %%a in (*.png) do ffmpeg -y -i "%%a" -qscale:v 2 "%%~na.jpg"
