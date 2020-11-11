#!/usr/bin/env bash
# run 'hugo server' on the site to be tested before running this command
while read -r _ new_url; do
  wget -qO /dev/null http://localhost:1313$new_url
  if [ $? -ne 0 ]; then
    echo "$new_url - $(tput setaf 1)bad$(tput sgr0)"
  else
    echo "$new_url - $(tput setaf 10)okay$(tput sgr0)"
  fi
done < src/static/_redirects
