#!/bin/sh
# Run 'hugo server' at the same time as this script
# Script requires linkchecker
if ! [ -x "$(command -v linkchecker)" ]; then
    echo "Error: linkchecker is not installed"
    exit
fi

# for extern add:
# --ignore-url=https://fonts.gstatic.com \
# --check-extern \
linkchecker --ignore-url=/livereload.js \
            --ignore-url=/dist \
            --no-status \
            http://localhost:1313
