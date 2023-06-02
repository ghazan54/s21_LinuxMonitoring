#!/bin/bash

if [ "$#" -ne 4 ]; then
  echo "Error: Incorrect number of parameters."
  echo "Correct format: $0 <param1> <param2> <param3> <param4>"
  exit 1
fi

# Проверка допустимых значений параметров
param1=$1
param2=$2
param3=$3
param4=$4

valid_params=("1" "2" "3" "4" "5" "6")

if [[ ! "${valid_params[*]}" =~ "$param1" || ! "${valid_params[*]}" =~ "$param2" || ! "${valid_params[*]}" =~ "$param3" || ! "${valid_params[*]}" =~ "$param4" ]]; then
  echo "Error: Invalid parameter values."
  echo "The parameters must be numbers from 1 to 6."
  exit 1
fi

source system_info.sh

source network_info.sh

source memory_info.sh

source disk_info.sh

source color_utils.sh

echo -e "${bg_param1}${fg_param1}HOSTNAME\e[0m = ${bg_param2}${fg_param2}$HOSTNAME\e[0m"
echo -e "${bg_param1}${fg_param1}TIMEZONE\e[0m = ${bg_param2}${fg_param2}$TIMEZONE\e[0m"
echo -e "${bg_param1}${fg_param1}USER\e[0m = ${bg_param2}${fg_param2}$USER\e[0m"
echo -e "${bg_param1}${fg_param1}OS\e[0m = ${bg_param2}${fg_param2}$OS\e[0m"
echo -e "${bg_param1}${fg_param1}DATE\e[0m = ${bg_param2}${fg_param2}$(date +'%d %b %Y %T')\e[0m"
echo -e "${bg_param1}${fg_param1}UPTIME\e[0m = ${bg_param2}${fg_param2}$(uptime -p)\e[0m"
echo -e "${bg_param1}${fg_param1}UPTIME_SEC\e[0m = ${bg_param2}${fg_param2}$(cat /proc/uptime | awk '{print $1}')\e[0m"
echo -e "${bg_param1}${fg_param1}IP\e[0m = ${bg_param2}${fg_param2}$IP\e[0m"
echo -e "${bg_param1}${fg_param1}MASK\e[0m = ${bg_param2}${fg_param2}$MASK\e[0m"
echo -e "${bg_param1}${fg_param1}GATEWAY\e[0m = ${bg_param2}${fg_param2}$GATEWAY\e[0m"
echo -e "${bg_param1}${fg_param1}RAM_TOTAL\e[0m = ${bg_param2}${fg_param2}$RAM_TOTAL GB\e[0m"
echo -e "${bg_param1}${fg_param1}RAM_USED\e[0m = ${bg_param2}${fg_param2}$RAM_USED GB\e[0m"
echo -e "${bg_param1}${fg_param1}RAM_FREE\e[0m = ${bg_param2}${fg_param2}$RAM_FREE GB\e[0m"
echo -e "${bg_param1}${fg_param1}SPACE_ROOT\e[0m = ${bg_param2}${fg_param2}$SPACE_ROOT MB\e[0m"
echo -e "${bg_param1}${fg_param1}SPACE_ROOT_USED\e[0m = ${bg_param2}${fg_param2}$SPACE_ROOT_USED MB\e[0m"
echo -e "${bg_param1}${fg_param1}SPACE_ROOT_FREE\e[0m = ${bg_param2}${fg_param2}$SPACE_ROOT_FREE MB\e[0m"
