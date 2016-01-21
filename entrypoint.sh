#!/bin/bash
set -e

if [ ! -f /home/bitcoin/.bitcoin/bitcoin.conf ]; then

mkdir -p /home/bitcoin/.bitcoin

/usr/bin/bitcoind 2>&1 | /bin/grep ^rpc > /home/bitcoin/.bitcoin/bitcoin.conf

fi

exec "$@"
