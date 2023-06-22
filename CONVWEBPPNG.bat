for %%a in (*.webp) do ffmpeg -y -i "%%a" "%%~na.png"
