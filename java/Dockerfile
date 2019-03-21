FROM debian:stretch

ARG JRE_NAME

ADD . /java
WORKDIR /java

# set system & locale
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y locales tar java-common && \
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8

RUN mkdir -p /usr/lib/jvm && \
    tar -xf jre.tar.gz -C /usr/lib/jvm && \
    rm -rf jre.tar.gz && \
    ./jinfo.sh && ./alternative.sh && \
    update-java-alternatives -s "${JRE_NAME}"

ENV LANG en_US.UTF-8
ENV JAVA_HOME="/usr/lib/jvm/${JRE_NAME}"

# Run and check Version
RUN java -version
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
