
for %%a in (*.webp) do ffmpeg -y -i "%%a" "%%~na.png"

for %%a in (*.avif) do ffmpeg -y -i "%%a" "%%~na.png"

