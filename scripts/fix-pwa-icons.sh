#!/bin/bash

# fixes any PWA installed by chromium browsers not using their own icon on GNOME

APPPATH="${HOME}/.local/share/applications/"

get_setting(){
    key=$1
    confFile=$2

    echo `grep "^${key}=" "${confFile}" | sed "s/${key}.*=//"`
}

for file in $( ls "${APPPATH}" | grep -i "chrom" ) ; do

    desktopFile="${APPPATH}/${file}"

    echo "$file"

    appName=$(get_setting "Name" "${desktopFile}")

    echo " # App Name: ${appName}"

    icon=$(get_setting "Icon" "${desktopFile}")
    echo "  - Icon: $icon"

    wmClass=$(get_setting "StartupWMClass" "${desktopFile}")
    echo "  - Window Class: $wmClass"

    if [[ "$icon" != "$wmClass" ]]; then

        echo "Updating ${desktopFile}"

        sed -i "s/$wmClass/$icon/g" "${desktopFile}"

        newIcon=$(get_setting "Icon" "${desktopFile}")
        echo "  - New Icon: $newIcon"

        NewwmClass=$(get_setting "StartupWMClass" "${desktopFile}")
        echo "  - New Window Class: $NewwmClass"
    else
        echo "  !! No Update Needed"

    fi

done
