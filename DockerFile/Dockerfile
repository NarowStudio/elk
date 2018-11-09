FROM ubuntu:16.04 

WORKDIR /opt/
RUN useradd -ms /bin/bash narow
RUN apt update -y
RUN apt upgrade -y
RUN apt install apt-utils sudo curl ctags wget python python-pip cmake git iputils* net-tools libpcap0.8 vim vim-g* vim-n* vim-t* -y

ADD .vimrc /home/narow/

RUN apt install software-properties-common -y 
RUN add-apt-repository ppa:openjdk-r/ppa -y 
RUN apt update -y 
RUN apt install openjdk-8-jdk -y 
RUN apt update -y
RUN apt upgrade -y

RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.4.2.zip
RUN unzip elasticsearch-6.4.2.zip
RUN mv elasticsearch-6.4.2 elastic
RUN chown narow elastic/ -R
RUN mkdir bak
RUN mv elasticsearch-6.4.2.zip bak/

RUN wget https://artifacts.elastic.co/downloads/logstash/logstash-6.4.2.zip
RUN unzip logstash-6.4.2.zip
RUN mv logstash-6.4.2 logstash
RUN chown narow logstash/ -R
RUN mv logstash-6.4.2.zip bak/
ADD status-log.conf /opt/logstash/config/

RUN wget https://artifacts.elastic.co/downloads/kibana/kibana-6.4.2-linux-x86_64.tar.gz
RUN tar xzvf kibana-6.4.2-linux-x86_64.tar.gz
RUN mv kibana-6.4.2-linux-x86_64 kibana
RUN chown narow /opt/kibana -R
RUN mv kibana-6.4.2-linux-x86_64.tar.gz bak/

RUN git clone https://github.com/VundleVim/Vundle.vim.git /home/narow/.vim/bundle/Vundle.vim 

