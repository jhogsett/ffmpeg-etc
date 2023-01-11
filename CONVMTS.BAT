for %%a in (*.mts) do ffmpeg -y -hwaccel cuda -hwaccel_output_format cuda -i "%%a" -ac 2 -c:v hevc_nvenc -crf 18 -threads 16 "%%~na.mp4"
