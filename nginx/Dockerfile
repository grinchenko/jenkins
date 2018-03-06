FROM ubuntu:trusty

#ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y dirmngr gnupg
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
RUN apt-get install -y apt-transport-https ca-certificates
RUN sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main > /etc/apt/sources.list.d/passenger.list'
RUN apt-get update
#RUN apt-get install -y nginx-common
RUN apt-get install -y nginx-extras passenger
RUN sed 's/\# include \/etc\/nginx\/passenger.conf;/include \/etc\/nginx\/passenger.conf;/' -i /etc/nginx/nginx.conf
RUN service nginx restart


RUN apt-get install -y git
RUN cd /var/
RUN git clone https://github.com/phusion/passenger-ruby-rails-demo.git
RUN cd passenger-ruby-rails-demo
RUN echo 'gem "passenger", ">= 5.0.25", require: "phusion_passenger/rack_handler"' >> Gemfile

RUN apt-get install -y curl
RUN apt-get install -y gem
RUN apt-get install -y ruby-dev
RUN apt-get install -y make
RUN apt-get install -y gcc
RUN gem install -y json
RUN apt-get install -y zlib1g-dev

#RUN apt-get update 
RUN apt-get install libxml2-dev
RUN apt-get install libxslt-dev
#RUN apt-get install -y ruby-full
RUN apt-get update
RUN gem install -y nokogiri
RUN gem install -y debug_inspector
RUN gem install -y passenger
RUN apt-get install -y libsqlite3-dev
#RUN gem install -y nokogiri -v '1.6.6.2'

RUN cd bin/
RUN ./bundle


EXPOSE 3000
EXPOSE 80



