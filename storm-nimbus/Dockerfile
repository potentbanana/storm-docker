FROM storm:latest
MAINTAINER Will Cliffe <will@nerdcorn.com>

RUN /usr/bin/config-supervisord.sh nimbus 
RUN /usr/bin/config-supervisord.sh drpc

EXPOSE 6627
EXPOSE 3772
EXPOSE 3773
EXPOSE 9001


ADD start-supervisor.sh /usr/bin/start-supervisor.sh
RUN chmod a+x /usr/bin/start-supervisor.sh
CMD /bin/sh -x /usr/bin/start-supervisor.sh
