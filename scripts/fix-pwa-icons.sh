#!/bin/bash

# fixes any PWA installed by chromium browsers not using their own icon on GNOME

APPPATH="${HOME}/.local/share/applications/"

get_setting(){
    key=$1
    confFile=$2

    grep "^${key}=" "${confFile}" | sed "s/${key}.*=//"
}

for file in "$APPPATH"/*; do
    case $file in
      *chrom*)
        ;;
      *)
        continue
        ;;
    esac

    echo "$file"

    appName=$(get_setting "Name" "$file")

    echo " # App Name: ${appName}"

    icon=$(get_setting "Icon" "$file")
    echo "  - Icon: $icon"

    wmClass=$(get_setting "StartupWMClass" "$file")
    echo "  - Window Class: $wmClass"

    if [[ "$icon" != "$wmClass" ]]; then

        echo "Updating $file"

        sed -i "s/$wmClass/$icon/g" "$file"

        newIcon=$(get_setting "Icon" "$file")
        echo "  - New Icon: $newIcon"

        NewwmClass=$(get_setting "StartupWMClass" "$file")
        echo "  - New Window Class: $NewwmClass"
    else
        echo "  !! No Update Needed"

    fi

done
