#!/usr/bin/env bash

log() {
    local message="$1"
    local color="$2"

    # Define color codes
    case "$color" in
        black) color_code="0;30" ;;
        red) color_code="0;31" ;;
        green) color_code="0;32" ;;
        yellow) color_code="0;33" ;;
        blue) color_code="0;34" ;;
        magenta) color_code="0;35" ;;
        cyan) color_code="0;36" ;;
        white) color_code="0;37" ;;
        bold_red) color_code="1;31" ;;
        bold_green) color_code="1;32" ;;
        bold_yellow) color_code="1;33" ;;
        bold_blue) color_code="1;34" ;;
        bold_magenta) color_code="1;35" ;;
        bold_cyan) color_code="1;36" ;;
        bold_white) color_code="1;37" ;;
        *) color_code="1;36" ;;  # default (Cyan)
    esac
    echo -e "\033[${color_code}m${message}\033[0m"
}