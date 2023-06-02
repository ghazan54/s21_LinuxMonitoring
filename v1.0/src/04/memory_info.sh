#!/bin/bash

RAM_TOTAL=$(free -m | awk '/Mem:/{printf "%.3fGb\n", $2/1024}')
RAM_USED=$(free -m | awk '/Mem:/{printf "%.3fGb\n", $3/1024}')
RAM_FREE=$(free -m | awk '/Mem:/{printf "%.3fGb\n", $4/1024}')
