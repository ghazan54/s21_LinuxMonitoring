#!/bin/bash

function get_color_code() {
  case $1 in
    "1") echo 7 ;;   # white
    "2") echo 1 ;;   # red
    "3") echo 2 ;;   # green
    "4") echo 3 ;;   # blue
    "5") echo 5 ;;   # purple
    "6") echo 0 ;;   # black
    *) echo "" ;;
  esac
}

function get_color_name() {
  case $1 in
    "1") echo "white" ;;
    "2") echo "red" ;;
    "3") echo "green" ;;
    "4") echo "blue" ;;
    "5") echo "purple" ;;
    "6") echo "black" ;;
    *) echo "" ;;
  esac
}

default_bg_color1="6"    # black
default_fg_color1="1"    # white
default_bg_color2="2"    # red
default_fg_color2="4"    # blue

config_file="config.txt"
if [ -f "$config_file" ]; then
  while IFS='=' read -r key value; do
    # echo "$key $value"
    if [[ ! -z "$key" && ! -z "$value" ]]; then
      case $key in
        "column1_background") bg_color1="$value" ;;
        "column1_font_color") fg_color1="$value" ;;
        "column2_background") bg_color2="$value" ;;
        "column2_font_color") fg_color2="$value" ;;
      esac
    fi
  done < "$config_file"
# else
  # echo "Error: Configuration file '$config_file' not found. Using default colors."
fi

default_print_colors="0"

if [ -z "$bg_color1" ] || [ -z "$fg_color1" ] || [ -z "$bg_color2" ] || [ -z "$fg_color2" ]; then
  bg_color1=$default_bg_color1
  fg_color1=$default_fg_color1
  bg_color2=$default_bg_color2
  fg_color2=$default_fg_color2
  default_print_colors="1"
fi

echo $bg_color1 $fg_color1 $bg_color2 $fg_color2

bg_param1="\e[4$(get_color_code $bg_color1)m"
fg_param1="\e[3$(get_color_code $fg_color1)m"
bg_param2="\e[4$(get_color_code $bg_color2)m"
fg_param2="\e[3$(get_color_code $fg_color2)m"
