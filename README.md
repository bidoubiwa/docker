Docker Project

Docker-machine :

Create a virtual machine 
- docker-machine create --driver virtualbox Char


See all active machines
```
docker-machine ls
```

Get IP of machine 
```
docker-machine ip [nameOfMachine]
```


Create environment variable that are avaible at that cmd
```
eval $(docker-machine env Char)
```

=>
```
➜  docker-machine env Char
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/cvermand/.docker/machine/machines/Char"
export DOCKER_MACHINE_NAME="Char"
# Run this command to configure your shell:
# eval $(docker-machine env Char)
```

They are now avaible when you type the env cmd.

docker IMAGES :


pull hello-world HUB from hub.docker.com
```
docker pull hello-world
```

run the image 
``` 
docker run hello-world
```

delete the image 
f for force
```
docker image rm hello-world -f
```

liste image
```
docker image ls
```


CONTAINERS : 

List of all container 
```
docker ps -a 
```

stop container 
```
docker stop [container]
```

remove container
```
docker rm 
```

if docker run with -d, it will run in background 
	
