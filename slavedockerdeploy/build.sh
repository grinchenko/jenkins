docker stop nginxcont
docker rm nginxcont
docker build -t nginx .
docker run -d --name nginxcont -p 80:80 -v /docker/nginxcont nginx
