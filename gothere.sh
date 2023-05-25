#! /bin/bash

declare -i hour=$(uptime -p | cut -d " " -f "2")*60*60
declare -i minute=$(uptime -p | cut -d " " -f "4")*60

declare -i up=$hour+$minute

currentdate=$(date +%s)
# up=$(uptime -p \\| cut -d " " -f \2,\4)

declare -i gotHere=$currentdate-$up

date -d "@${gotHere}"