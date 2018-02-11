#!/bin/bash
set -ex

if [ ! -d /iri/mainnetdb ]; then
  curl -sLo /iri/IOTA.partners-mainnetdb.tar.gz http://db.iota.partners/IOTA.partners-mainnetdb.tar.gz
  mkdir -p /iri/mainnetdb
  tar xvzf /iri/IOTA.partners-mainnetdb.tar.gz -C /iri/mainnetdb
  rm -f /iri/IOTA.partners-mainnetdb.tar.gz
fi

exec /usr/bin/java $@
