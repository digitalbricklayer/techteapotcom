#!/bin/bash
# run 'hugo server' on the site to be tested before running this command
while read -r old_url new_url; do
  wget -qO /dev/null http://localhost:1313$new_url
  if [ $? -ne 0 ]; then
    echo "$new_url - bad"
  else
    echo "$new_url - okay"
  fi
done < static/_redirects
