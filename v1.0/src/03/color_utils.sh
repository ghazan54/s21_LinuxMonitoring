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

bg_param1="\e[4$(get_color_code "$param1")m"
fg_param1="\e[3$(get_color_code "$param2")m"
bg_param2="\e[4$(get_color_code "$param3")m"
fg_param2="\e[3$(get_color_code "$param4")m"
