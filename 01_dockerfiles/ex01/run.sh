docker build -t teamspeak42 .
docker run --name ts_42 -p 9987:9987/udp -p 10011:10011 -p 30033:30033 teamspeak42

