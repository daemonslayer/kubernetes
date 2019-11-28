FROM ufoym/deepo:pytorch-py36-cu101

RUN \
	apt-get update && \
	apt-get install -y nano && \  
	apt-get install -y vim  && \
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add - && \
	echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list && \
	apt-get -y update && \
	apt-get install -y sublime-text && \
	apt-get install -y make && \
	apt-get install -y cmake && \
	apt-get install -y g++ && \
	apt-get install -y gdb && \ 
	apt-get install -y libsm6 libxrender1 libfontconfig1 libxext6 && \
	apt-get install -y screen htop