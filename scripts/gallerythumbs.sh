#!/bin/sh
# Run the script from the root of the hugo site
# Script requires imagemagick
if ! [ -x "$(command -v convert)" ]; then
    echo "Error: imagemagick is not installed"
    exit
fi
for i in `find static/image/galleries -type f ! -name "*-thumb.jpg" -name "*.jpg"`; do echo $i; if [ -f ${i%.*}-thumb.jpg ]; then continue; fi; convert $i -thumbnail 150x150 ${i%.*}-thumb.jpg; done
for i in `find static/image/galleries -type f ! -name "*-thumb.jpeg" -name "*.jpeg"`; do echo $i; if [ -f ${i%.*}-thumb.jpeg ]; then continue; fi; convert $i -thumbnail 150x150 ${i%.*}-thumb.jpeg; done
for i in `find static/image/galleries -type f ! -name "*-thumb.png" -name "*.png"`; do echo $i; if [ -f ${i%.*}-thumb.png ]; then continue; fi; convert $i -thumbnail 150x150 ${i%.*}-thumb.png; done
