@echo off
set per="%%"

md .\deinterlaced
for %%a in (*.mpg) do (
  md ".\deinterlaced\%%~na"
  ffmpeg -y -i "%%a" -filter:v bwdif=mode=send_field:parity=auto:deint=all  -ac 2 -threads 16 ".\deinterlaced\%%~na\%%~na_%per%09d.png"
)

md .\deinterlaced
for %%a in (*.mpg) do (
  md ".\deinterlaced\%%~na"
  ffmpeg -y -i "%%a" -filter:v bwdif=mode=send_field:parity=auto:deint=all -threads 16 ".\deinterlaced\%%~na\%%~na_%per%09d.png"
)

for %%a in (*.mp4) do (
  md ".\deinterlaced\%%~na"
  ffmpeg -y -i "%%a" -filter:v bwdif=mode=send_field:parity=auto:deint=all -threads 16 ".\deinterlaced\%%~na\%%~na_%per%09d.png"
)
