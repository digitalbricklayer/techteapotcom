#!/usr/bin/env bash

# Validate the contents of the sitemap
# See https://blog.atj.me/2018/05/crawl-sitemap-xml-with-curl/ for inspiration
# run 'hugo server' on the site to be tested before running this command
SITEMAP_URI="/sitemap.xml"
SITEMAP_URL="http://localhost:1313"$SITEMAP_URI

# Start the test server
docker-compose up -d

# Wait for the test server to start up
until $(curl --output /dev/null --silent --head --fail $SITEMAP_URL); do
    printf '.'
    sleep 1
done

curl -s $SITEMAP_URL | \
  grep -e loc | \
  sed 's|<loc>\(.*\)<\/loc>$|\1|g' | \
  xargs -I {} curl -s -o /dev/null -w "%{http_code} %{url_effective}\n" {} | \
  grep -v 200

docker-compose stop
