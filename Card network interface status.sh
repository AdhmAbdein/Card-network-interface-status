#!/bin/bash

interface=("ens160")

if [ -d "/sys/class/net/${interface[@]}" ]
then
        echo "Network card : '${interface[@]}' is exist "
        status=$(cat "/sys/class/net/${interface[@]}/operstate")

        if [ "$status" = "up" ]
        then
                echo "Network card status is up"
        else
                echo "Nework card status is down"
        fi
else
        echo "Network card : '${interface[@]}' is not exist "

fi
