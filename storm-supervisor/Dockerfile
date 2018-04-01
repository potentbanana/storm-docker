FROM storm:latest
MAINTAINER Will Cliffe <will@nerdcorn.com>

EXPOSE 6700
EXPOSE 6701
EXPOSE 6702
EXPOSE 6703
EXPOSE 8000
EXPOSE 9001

RUN apt-get install -y python3 python3-setuptools
RUN easy_install3 pip
RUN pip3 install kafka
RUN pip3 install pymongo
RUN pip3 install requests
RUN pip3 install configobj

RUN /usr/bin/config-supervisord.sh supervisor
RUN /usr/bin/config-supervisord.sh logviewer

ADD start-supervisor.sh /usr/bin/start-supervisor.sh
RUN chmod a+x /usr/bin/start-supervisor.sh
CMD /usr/bin/start-supervisor.sh



