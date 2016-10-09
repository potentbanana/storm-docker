FROM storm:latest
MAINTAINER Will Cliffe <will@nerdcorn.com>

EXPOSE 6700
EXPOSE 6701
EXPOSE 6702
EXPOSE 6703
EXPOSE 8000

RUN apt-get install -y python3 python3-setuptools    
RUN easy_install3 pip
RUN pip3 install kafka
RUN pip3 install pymongo
RUN pip3 install requests

RUN /usr/bin/config-supervisord.sh supervisor
RUN /usr/bin/config-supervisord.sh logviewer
CMD /usr/bin/start-supervisor.sh




