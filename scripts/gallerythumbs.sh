#!/bin/sh
# Script requires imagemagick
if ! [ -x "$(command -v convert)" ]; then
    echo "Error: imagemagick is not installed"
    exit
fi
for i in `find static/image/galleries -type f ! -name "*-thumb.jpg" -name "*.jpg"`; do echo $i; if [ -f ${i%.*}-thumb.jpg ]; then continue; fi; convert $i -thumbnail 100x100 ${i%.*}-thumb.jpg; done
for i in `find static/image/galleries -type f ! -name "*-thumb.png" -name "*.png"`; do echo $i; if [ -f ${i%.*}-thumb.png ]; then continue; fi; convert $i -thumbnail 100x100 ${i%.*}-thumb.png; done
