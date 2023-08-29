create project directory clone github repository here

pull image

docker pull infracloudio/csvserver:latest docker pull prom/prometheus:v2.22.0

check image

docker image ls

run container

docker container run -d --name csv infracloudio/csvserver:latest

check container

docker container ls -a

debug

container not running because file datainput not found

create script to generate file

generated script for creating inputFile

running container with this file mounted

docker container run -d --name csv -v /root/solution/inputFile:/csvserver/inputdata infracloudio/csvserver:latest

container is running attach the terminal to check the port

docker container exec -it csv /bin/bash netstat -tuln

run container again after stopping with port mapping on 9393 of host

docker container run -d --name csv -v /root/solution/inputFile:/csvserver/inputdata -p9393:9300 infracloudio/csvserver:latest

access the application on browser

http://localhost:9393

stop container and run again and set env this time

docker container run -d --name csv -v /root/solution/inputFile:/csvserver/inputdata -p9393:9300 -e CSVSERVER_BORDER='orange' infracloudio/csvserver:latest
