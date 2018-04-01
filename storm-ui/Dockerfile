FROM storm:latest
MAINTAINER Will Cliffe <will@nerdcorn.com>

RUN /usr/bin/config-supervisord.sh ui
EXPOSE 8080
EXPOSE 9001

ADD start-supervisor.sh /usr/bin/start-supervisor.sh
RUN chmod a+x /usr/bin/start-supervisor.sh
CMD /usr/bin/start-supervisor.sh
