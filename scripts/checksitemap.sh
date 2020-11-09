#!/usr/bin/env bash
# Validate the contents of the sitemap
# See https://blog.atj.me/2018/05/crawl-sitemap-xml-with-curl/ for inspiration
# run 'hugo server' on the site to be tested before running this command
SITEMAP_URI="/sitemap.xml"
SITEMAP_URL="http://localhost:1313"$SITEMAP_URI

curl -s $SITEMAP_URL | \
  grep -e loc | \
  sed 's|<loc>\(.*\)<\/loc>$|\1|g' | \
  xargs -I {} curl -s -o /dev/null -w "%{http_code} %{url_effective}\n" {} | \
  grep -v 200
