FROM tutum/apache-php

LABEL Author="Istvan Cebrian"

RUN sudo apt-get update && sudo apt-get install git -y
RUN sudo mkdir /opt/git && cd /opt/git && sudo git clone https://github.com/icebrian/web.git ./
RUN sudo rm /app/* && cd /opt/git/phphost && cp * /app
CMD ["/run.sh"]
