FROM ubuntu:16.04 

RUN useradd -ms /bin/bash narow
RUN apt upgrade -y
RUN apt update -y
RUN apt install vim vim-g* vim-n* vim-t* curl ctags wget -y 
RUN apt install python python-pip cmake git -y 
RUN apt install iputils* -y 
RUN ufw disable
ADD .vimrc /home/narow/
RUN apt install software-properties-common -y 
RUN add-apt-repository ppa:openjdk-r/ppa -y 
RUN apt update -y 
RUN apt install openjdk-8-jdk -y 
RUN apt install apt-utils sudo -y
RUN apt upgrade -y
RUN apt update -y
RUN apt install libpcap0.8 -y
RUN apt upgrade -y

RUN wgethttps://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.4.2.zip
RUN mv elasticsearch-6.4.2.zip /opt/elasticsearch.zip
RUN unzip /opt/elasticsearch.zip
RUN chown narow elasticsearch/ -R
RUN mkdir /opt/bak
RUN mv /opt/elasticsearch.zip /opt/bak/

RUN wget https://artifacts.elastic.co/downloads/logstash/logstash-6.4.2.zip
RUN mv logstash-6.4.2.zip /opt/logstash.zip
RUN unzip /opt/logstash.zip
RUN chown narow logstash/ -R
RUN mv /opt/logstash.zip /opt/bak/
ADD status-log.conf /opt/logstash/config/

RUN wget https://artifacts.elastic.co/downloads/kibana/kibana-6.4.2-linux-x86_64.tar.gz
RUN mv kibana-6.4.2-linux-x86_64.tar.gz /opt/kibana.tar.gz
RUN tar xzvf kibana.tar.gz
RUN chown narow kibana/ -R
RUN mv /opt/kibana.tar.gz /opt/bak/

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

