FROM debian

RUN apt-get update \
&& apt-get install curl -y \
&& apt-get install bzip2 -y

WORKDIR /home

RUN mkdir teamspeak

WORKDIR /teamspeak

RUN curl -O http://dl.4players.de/ts/releases/3.2.0/teamspeak3-server_linux_amd64-3.2.0.tar.bz2 \ 
&& tar xvjf teamspeak3-server_linux_amd64-3.2.0.tar.bz2 --strip 1 \
&& rm teamspeak3-server_linux_amd64-3.2.0.tar.bz2

RUN printf "license_accepted=1\n" > .ts3server_license_accepted 

EXPOSE 9987/udp
EXPOSE 30033/tcp
EXPOSE 10011/tcp

ENTRYPOINT sh ts3server_minimal_runscript.sh
 
