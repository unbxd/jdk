# Environment Variables set by the base image
# > ENV JAVA_HOME=/opt/java/openjdk
# > ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# > ENV JAVA_VERSION=jdk-11.0.17+8

FROM eclipse-temurin:11-jdk-jammy

# To add any new packages, add it at the end of line 
# > apt-get install curl jq
RUN apt-get update \
    && apt-get install -y curl jq htop 

# packages for Jemalloc compilation
WORKDIR /jemalloc
RUN apt-get install -y wget build-essential autoconf autogen
RUN wget https://github.com/jemalloc/jemalloc/archive/5.3.0.tar.gz \
    && tar -zxf 5.3.0.tar.gz
WORKDIR /jemalloc/jemalloc-5.3.0
RUN ./autogen.sh && ./configure --enable-prof && make install && jeprof --version
ENV LD_PRELOAD=/usr/local/lib/libjemalloc.so
# Jemalloc compilation done, clean up
RUN apt-get autoremove -y wget build-essential autoconf autogen
RUN rm -rf /jemalloc

# clean up apt-cache
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/*