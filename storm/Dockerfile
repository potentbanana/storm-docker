FROM ubuntu:latest
MAINTAINER Will Cliffe <will@nerdcorn.com>

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y wget
RUN apt-get install -y supervisor
RUN apt-get install -y openssh-server
RUN apt-get install -y openssh-client
RUN apt-get install -y default-jre default-jdk
RUN apt-get install -y software-properties-common 
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -y oracle-java8-installer
RUN update-alternatives --config java

RUN wget -q -O - http://www.gtlib.gatech.edu/pub/apache/storm/apache-storm-1.0.2/apache-storm-1.0.2.tar.gz | tar -xzvf - -C /opt

ENV STORM_HOME /opt/apache-storm-1.0.2
ENV STORM_CONFIG_DIR /opt/apache-storm-1.0.2/conf
ENV CLUSTER_CONF_DIR /opt/apache-storm-1.0.2/logback

RUN groupadd storm; useradd --gid storm --home-dir /home/storm --create-home --shell /bin/bash storm; chown -R storm:storm $STORM_HOME; mkdir /var/log/storm ; chown -R storm:storm /var/log/storm

RUN ln -s $STORM_HOME/bin/storm /usr/bin/storm

ADD storm.yaml $STORM_HOME/conf/storm.yaml
ADD cluster.xml $STORM_HOME/logback/cluster.xml
ADD config-supervisord.sh /usr/bin/config-supervisord.sh
ADD start-supervisor.sh /usr/bin/start-supervisor.sh 

RUN echo [supervisord] | tee -a /etc/supervisor/supervisord.conf ; echo nodaemon=true | tee -a /etc/supervisor/supervisord.conf
