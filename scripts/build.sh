#!/usr/bin/env bash
docker run --rm -it \
  -v $(pwd)/src:/src \
  klakegg/hugo:0.78.1
