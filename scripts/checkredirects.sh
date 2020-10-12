#!/bin/bash
awk '{print $2}' static/_redirects | while read line
do
  # Exclude comment lines...
  if [[ "$line" != "^#.*" ]]; then
    wget -qO /dev/null http://localhost:1313$line
    if [ $? -ne 0 ]; then
      echo "$line - bad"
    else
      echo "$line - okay"
    fi
  fi
done
