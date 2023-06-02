#!/bin/bash

source system_info.sh

source network_info.sh

source memory_info.sh

source disk_info.sh

echo "HOSTNAME = $HOSTNAME"
echo "TIMEZONE = $TIMEZONE"
echo "USER = $USER"
echo "OS = $OS"
echo "DATE = $(date +'%d %b %Y %T')"
echo "UPTIME = $(uptime -p)"
echo "UPTIME_SEC = $(cat /proc/uptime | awk '{print $1}')"
echo "IP = $IP"
echo "MASK = $MASK"
echo "GATEWAY = $GATEWAY"
echo "RAM_TOTAL = $RAM_TOTAL GB"
echo "RAM_USED = $RAM_USED GB"
echo "RAM_FREE = $RAM_FREE GB"
echo "SPACE_ROOT = $SPACE_ROOT MB"
echo "SPACE_ROOT_USED = $SPACE_ROOT_USED MB"
echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE MB"

read -p "Хотите сохранить данные в файл? (Y/N): " choice

if [[ "$choice" == "Y" || "$choice" == "y" ]]; then
    filename="$(date +'%d_%m_%y_%H_%M_%S').status"

    {
        echo "HOSTNAME = $HOSTNAME"
        echo "TIMEZONE = $TIMEZONE"
        echo "USER = $USER"
        echo "OS = $OS"
        echo "DATE = $(date +'%d %b %Y %T')"
        echo "UPTIME = $(uptime -p)"
        echo "UPTIME_SEC = $(cat /proc/uptime | awk '{print $1}')"
        echo "IP = $IP"
        echo "MASK = $MASK"
        echo "GATEWAY = $GATEWAY"
        echo "RAM_TOTAL = $RAM_TOTAL GB"
        echo "RAM_USED = $RAM_USED GB"
        echo "RAM_FREE = $RAM_FREE GB"
        echo "SPACE_ROOT = $SPACE_ROOT MB"
        echo "SPACE_ROOT_USED = $SPACE_ROOT_USED MB"
        echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE MB"
    } > "$filename"

    echo "Данные сохранены в файл: $filename"
else
    echo "Данные не будут сохранены."
fi
