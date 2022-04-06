#!/bin/sh
# This script downloads the latest version of JMusicBot.
# Version 2 - (C) 2021 - NKN1396

# Figure out newest file
URL=$(
  curl -s https://api.github.com/repos/jagrosh/MusicBot/releases/latest \
  | jq -r '.assets[0].browser_download_url'
)

# Delete old file
find ./ -name "JMusicBot-*.*.*.jar" -delete

# Download file
wget -nv $URL

# Set permissions
echo $URL \
| grep -o -P "[^\\/]+.jar$" \
| xargs chmod u+x
