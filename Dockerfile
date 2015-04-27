FROM saltstack/debian-7

MAINTAINER restlessbandit "devops@restlessbandit.com"

RUN apt-get install -y salt-minion

COPY ./minion /etc/salt/minion
