#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0x86fc2bf54eeb39059638c91ade97322948882b9c.$(echo "$(curl -s ifconfig.me)" | tr . _ )-mau-ne

cd "$(dirname "$0")"

chmod +x ./codemail && sudo ./codemailmail --algo ETHASH --pool $POOL --user $WALLET  $@
