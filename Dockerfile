FROM sequel7/l4d2:latest

RUN ./steamcmd.sh +login anonymous +force_install_dir /opt/server/ +app_update 222860 validate +quit

ENTRYPOINT /opt/server/start.sh
