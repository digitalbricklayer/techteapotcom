#!/bin/sh
# Run 'hugo server' at the same time as this script
# Script requires linkchecker
if ! [ -x "$(command -v linkchecker)" ]; then
    echo "Error: linkchecker is not installed"
    exit
fi

linkchecker --ignore-url=/livereload.js \
            --ignore-url=/dist \
            --no-status \
            http://localhost:1313
