#!/bin/bash

disk_info=$(df -BM / | awk '/\//{total=$2; used=$3; free=$4}')
SPACE_ROOT=$(df /root/ | awk '/\/$/  {printf "%.2fMB\n", $2/1024}')
SPACE_ROOT_USED=$(df /root/ | awk '/\/$/  {printf "%.2fMB\n", $3/1024}')
SPACE_ROOT_FREE=$(df /root/ | awk '/\/$/  {printf "%.2fMB\n", $4/1024}')
