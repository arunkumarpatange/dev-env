FROM ubuntu:14.04.2

COPY . /base/dev
RUN apt-get update && apt-get install -y \
        libssl-dev \
        python2.7 \
        python2.7-dev \
        python-pip \
        git \
        vim \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/* \
        && pip install -r /base/dev/requirements.txt


RUN apt-get update; \
    apt-get install  -y software-properties-common; \
    add-apt-repository -y ppa:webupd8team/java
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-get update; \
    apt-get install -y \
        libssl-dev \
        oracle-java7-installer \
        oracle-java7-set-default; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*; \
    rm -rf /var/cache/oracle-jdk7-installer

WORKDIR /base/dev
RUN git clone http://github.com/tpope/vim-vividchalk  /base/dev/.vim/
RUN /base/dev/vim/setup.sh
