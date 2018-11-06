FROM ubuntu:16.04 

RUN apt upgrade -y
RUN apt update -y
RUN apt install vim vim-g* vim-n* vim-t* curl ctags -y 
RUN apt install python python-pip cmake git -y 
RUN apt install libpcap0.8 –y 
RUN apt install iputils* -y 
RUN ufw disable 

RUN apt install software-properties-common -y 
RUN add-apt-repository ppa:openjdk-r/ppa -y 
RUN apt update -y 
RUN apt install openjdk-8-jdk -y 

RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

