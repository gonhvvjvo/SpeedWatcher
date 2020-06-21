#!/bin/bash

# Configuration
SpeedBaseline=60  # Mbps
LinkName="FTTH TRUE1"
MSGNormal="Normal"
MSGProblem="Problem"
LINEAccessToken=xxxx

# Test
Date=$(date)
SpeedDownloadResult=$(speedtest-cli | grep ^Download)
SpeedDownload=$(echo $SpeedDownloadResult | grep -Eo '[0-9]+\.[0-9]+')


# Print result
if (( $(bc <<<"$SpeedDownload > $SpeedBaseline") )); then
    MSGLINE="Result Test $LinkName | $MSGNormal | $SpeedDownloadResult"
    echo -e "${Date} | ${MSGLINE}"
    curl -X POST -H "Authorization: Bearer ${LINEAccessToken}" -d "message=${MSGLINE}" https://notify-api.line.me/api/notify
else
    MSGLINE="Result Test $LinkName | $MSGProblem | $SpeedDownloadResult"
    echo -e "${Date} | ${MSGLINE}"
    curl -X POST -H "Authorization: Bearer ${LINEAccessToken}" -d "message=${MSGLINE}" https://notify-api.line.me/api/notify
fi