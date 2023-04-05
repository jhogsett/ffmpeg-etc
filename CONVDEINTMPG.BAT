rem https://forum.videohelp.com/threads/405931-FFMPEG-Deinterlace

md .\deinterlaced
for %%a in (*.mpg) do ffmpeg -y -i "%%a" -crf 18 -filter:v bwdif=mode=send_field:parity=auto:deint=all -threads 16 ".\deinterlaced\%%~na.mp4"

