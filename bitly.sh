#!/bin/bash
while getopts ":u:a" opt
do
   case "$opt" in
      u) longurl="$OPTARG" ;;
      a) nothing="$OPTARG" ;;
   esac
done
echo $longurl

Accesstoken=o_2iildklgtl
api=https://api-ssl.bitly.com/v4/shorten

  if [[ ! $longurl ]]; then
    echo -e "Error URL Missing"
    exit 1
  fi

# Curl request
curl \
-H 'Authorization: Bearer $Accesstoken' \
-H 'Content-Type: application/json' \
-X POST \
-d '{
  "long_url": "$longurl",
  "domain": "bit.ly",
  "group_guid": "Ba1bc23dE4F"
}' \
https://api-ssl.bitly.com/v4/shorten

