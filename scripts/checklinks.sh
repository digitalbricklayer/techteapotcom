#!/usr/bin/env bash

# Check all internal links on the dev site

echoerr() { printf "%s\n" "$*" >&2; }

# Script requires linkchecker
if ! [ -x "$(command -v linkchecker)" ]; then
    echoerr "Error: linkchecker is not installed"
    exit 1
fi

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
linkchecker --ignore-url=/livereload.js \
            --ignore-url=/dist \
            --no-status \
            $SITE_URL
