FROM sequel7/l4d2:latest

RUN ./steamcmd.sh +login anonymous +force_install_dir /opt/server/ +app_update 222860 validate +quit

COPY start.sh /opt/server/start.sh
COPY server.cfg /opt/server/left4dead2/cfg/server.cfg
COPY random_map.sh /opt/server/random_map.sh

ENTRYPOINT /opt/server/start.sh
