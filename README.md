# pocketmine

Build notes

docker build  -t="egonczeruk/pocketmine:latest" .

docker run -d -p 19132:19132 -p 19132:19132/udp --name pocketmine -v /opt/minecraft/worlds:/pocketmine/worlds egonczeruk/pocketmine


