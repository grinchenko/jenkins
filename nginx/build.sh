docker stop passenger-ruby
docker rm passenger-ruby
docker build -t passenger-ruby .
docker run -d --name passenger-ruby -p 80:81 -p 3000:3000 -v /docker/passenger-ruby passenger-ruby
