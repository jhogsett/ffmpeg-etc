rem https://forum.videohelp.com/threads/405931-FFMPEG-Deinterlace

md .\deinterlaced
for %%a in (*.mp4) do ffmpeg -y -i "%%a" -filter:v bwdif=mode=send_field:parity=auto:deint=all -threads 16 ".\deinterlaced\%%~na.mp4"
for %%a in (*.mpg) do ffmpeg -y -i "%%a" -filter:v bwdif=mode=send_field:parity=auto:deint=all -threads 16 ".\deinterlaced\%%~na.mp4"

