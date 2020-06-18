#!/bin/bash
msg="message=$1::$2"
curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -H "Authorization: Bearer ==========ใส่ Token Line ของตัวเองนะ=========" \
    --data "$msg" \
    https://notify-api.line.me/api/notify
