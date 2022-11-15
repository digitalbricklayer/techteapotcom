#!/usr/bin/env bash

# Check all internal links on the dev site

# default port used when `hugo serve` command is used
SITE_URL="http://localhost:1313"

# Start the test server
docker-compose up -d

# Wait for the test server to start up
until $(curl --output /dev/null --silent --head --fail $SITE_URL/); do
    printf '.'
    sleep 1
done

# To check external links add:
# --ignore-url=https://fonts.gstatic.com \
# --check-extern \
docker run --rm -it --network="host" -u $(id -u):$(id -g) \
    ghcr.io/linkchecker/linkchecker:latest \
    --ignore-url=/dist --no-status \
    $SITE_URL/

docker-compose down
