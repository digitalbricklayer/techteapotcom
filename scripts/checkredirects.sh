#!/usr/bin/env bash

# Check redirect destinations work on the dev site
SITE_URL="http://localhost:1313"

# Start the test server
docker-compose up -d

# Wait for the test server to start up
until $(curl --output /dev/null --silent --head --fail $SITE_URL/); do
    printf '.'
    sleep 1
done

while read -r _ new_url; do
  curl --output /dev/null --silent --head --fail $SITE_URL$new_url
  if [ $? -ne 0 ]; then
    echo "$new_url - $(tput setaf 1)bad$(tput sgr0)"
  else
    echo "$new_url - $(tput setaf 10)okay$(tput sgr0)"
  fi
done < src/static/_redirects

docker-compose down
