#!/bin/bash
set -e

if [ ! -d /iri/mainnetdb ]; then
  curl -sLo /tmp/IOTA.partners-mainnetdb.tar.gz http://db.iota.partners/IOTA.partners-mainnetdb.tar.gz
  tar xvzf /tmp/OTA.partners-mainnetdb.tar.gz
  rm -f /tmp/OTA.partners-mainnetdb.tar.gz
fi

exec /usr/bin/java $@
