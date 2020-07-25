docker rmi ft_server
docker rm $(docker ps -a -f status=exited -q)
docker build --tag ft_server .
docker run -it -p 80:80 --name ft_server ft_server