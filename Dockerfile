FROM bartt/ubuntu-base
#FROM ubuntu:14.04
MAINTAINER Eric Gonczeruk 

RUN apt-get -y install python3-yaml

RUN mkdir /pocketmine
RUN cd /pocketmine && curl -sL http://get.pocketmine.net/ | bash -s - -r -v development

VOLUME /pocketmine
WORKDIR /pocketmine

EXPOSE 19132
EXPOSE 19132/udp

CMD ["./start.sh", "--no-wizard", "--enable-rcon=on"]
