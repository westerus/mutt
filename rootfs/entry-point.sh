#!/bin/sh
set -e

for file in /usr/local/share/ca-certificates/*.crt
do
  if [ -e "$file" ]
  then
    echo "There are certificates files"
    /usr/sbin/update-ca-certificates
  fi
done

exec "$@"
