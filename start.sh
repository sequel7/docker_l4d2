#!/bin/bash

./steamcmd.sh +login anonymous +force_install_dir /opt/server/ +app_update 222860 +quit

cd /opt/server
echo map $(./random_map.sh) versus > /opt/server/left4dead2/cfg/versus.cfg
/opt/server/srcds_run -console -game left4dead2 +maxplayers 16 -maxclients 16 +map $(./random_map.sh) +exec versus.cfg
