FROM ubuntu:16.04 

WORKDIR /opt/
RUN useradd -ms /bin/bash narow
RUN apt update -y
RUN apt upgrade -y
RUN apt install apt-utils -y
RUN apt install sudo -y
RUN apt install vim -y 
RUN apt install vim-g* -y
RUN apt install vim-n* -y
RUN apt install vim-t* -y
RUN apt install curl -y
RUN apt install ctags -y
RUN apt install wget -y
RUN apt install python  -y
RUN apt install python-pip -y
RUN apt install cmake -y
RUN apt install git -y
RUN apt install iputils* -y
RUN apt install net-tools -y
RUN apt install libpcap0.8 -y
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

