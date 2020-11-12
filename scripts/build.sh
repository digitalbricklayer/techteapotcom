#!/usr/bin/env bash
# Build the site to src/output
docker run --rm -it \
  -v $(pwd)/src:/src \
  -u $(id -u):$(id -g) \
  klakegg/hugo:0.78.1
