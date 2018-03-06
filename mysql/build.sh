docker stop mysql
docker rm mysql
docker build -t mysql .
docker run -d --rm --name mysql -p 3306:3306 -v /docker/mysql:/var/lib/mysql mysql
