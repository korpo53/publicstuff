#!/bin/bash
apt update && apt dist-upgrade -y
apt install -y curl gnupg zip unzip
echo deb https://downloads.plex.tv/repo/deb public main | tee /etc/apt/sources.list.d/plexmediaserver.list
curl https://downloads.plex.tv/plex-keys/PlexSign.key | apt-key add -
apt update && apt install -y plexmediaserver


