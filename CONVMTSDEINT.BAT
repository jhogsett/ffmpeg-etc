for %%a in (*.mts) do ffmpeg -y -i "%%a" -filter:v bwdif=mode=send_field:parity=auto:deint=all -ac 2 -crf 18 -threads 16 "%%~na.mp4"
