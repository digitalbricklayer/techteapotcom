#!/bin/sh
cat static/_redirects | awk '{print $2}' > x.tmp
wget -B https://techteapot.com/ -i x.tmp
rm -f x.tml
