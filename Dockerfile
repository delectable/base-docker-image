FROM python
MAINTAINER Cassio Paes-Leme <cassio@delectable.com>

RUN apt-get update
 
# basics
RUN apt-get install -y nginx openssh-server git-core openssh-client curl
RUN apt-get install -y build-essential
RUN apt-get install -y openssl libreadline6 libreadline6-dev curl zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool pkg-config
RUN cd /tmp && wget http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.5.tar.gz && tar -xvzf ruby-2.1.5.tar.gz && cd ruby-2.1.5/ && ./configure --prefix=/usr/local && make && make install