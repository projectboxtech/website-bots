FROM ubuntu:trusty
WORKDIR /home
RUN apt-get update --fix-missing

# Install PhantomJS
RUN apt-get -y install \
	build-essential \
	g++ \
	flex \
	bison \
	gperf \
	ruby \
	perl \
	libsqlite3-dev \
	libfontconfig1-dev \
	libicu-dev \
	libfreetype6 \
	libssl-dev \
	libpng-dev \
	libjpeg-dev \
	python \
	libx11-dev \
	libxext-dev \
	wget \
	git
RUN git clone --depth=1 --recurse-submodules https://github.com/ariya/phantomjs.git
RUN ./phantomjs/build.py
RUN ln -s /home/phantomjs/bin/phantomjs /bin/phantomjs
