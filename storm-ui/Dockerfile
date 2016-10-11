FROM storm:latest
MAINTAINER Will Cliffe <will@nerdcorn.com>

RUN /usr/bin/config-supervisord.sh ui
EXPOSE 8080

ADD start-supervisor.sh /usr/bin/start-supervisor.sh
CMD /usr/bin/start-supervisor.sh




