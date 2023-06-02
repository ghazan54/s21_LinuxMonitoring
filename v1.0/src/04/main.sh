#!/bin/bash

# config_file="config.txt"
# if [ ! -f "$config_file" ]; then
#   echo "Error: Configuration file not found."
#   exit 1
# fi

if [ "$#" -ne 0 ]; then
  echo "Error: No parameters are allowed."
  exit 1
fi

source color_utils.sh

source system_info.sh

source network_info.sh

source memory_info.sh

source disk_info.sh

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

if [ "$default_print_colors" -ne "0" ]; then
  echo -e "\nColumn 1 background = default ($(get_color_name "$bg_color1"))"
  echo -e "Column 1 font color = default ($(get_color_name "$fg_color1"))"
  echo -e "Column 2 background = default ($(get_color_name "$bg_color2"))"
  echo -e "Column 2 font color = default ($(get_color_name "$fg_color2"))"
else
  echo -e "\nColumn 1 background = $bg_color1 ($(get_color_name $bg_color1))"
  echo -e "Column 1 font color = $fg_color1 ($(get_color_name $fg_color1))"
  echo -e "Column 2 background = $bg_color2 ($(get_color_name $bg_color2))"
  echo -e "Column 2 font color = $fg_color2 ($(get_color_name $fg_color2))"
fi


