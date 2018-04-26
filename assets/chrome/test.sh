convert "$1" \
\( -clone 0 -resize 256x256 -write 256.png \) \
\( -clone 0 -resize 128x128 -write 128.png \) \
\( -clone 0 -resize 96x96 -write 96.png \) \
\( -clone 0 -resize 64x64 -write 64.png \) \
\( -clone 0 -resize 48x48 -write 48.png \) \
\( -clone 0 -resize 32x32 -write 32.png \)
