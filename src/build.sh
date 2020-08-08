docker rm $(docker ps -a -f status=exited -q)
docker rmi ft_server
docker build -t ft_server ../
docker run --name ft_server -it -p 80:80 -p 443:443 ft_server