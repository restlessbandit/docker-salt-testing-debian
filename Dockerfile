FROM saltstack/debian-7

MAINTAINER restlessbandit "devops@restlessbandit.com"

RUN apt-get install -y salt-minion

RUN apt-get install git

RUN git clone https://github.com/sstephenson/bats.git /home/bats

RUN cd /home/bats && ./install.sh /usr/local

COPY ./minion /etc/salt/minion
