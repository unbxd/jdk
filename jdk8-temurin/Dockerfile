# Environment Variables set by the base image
# > ENV JAVA_HOME=/opt/java/openjdk
# > ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# > ENV JAVA_VERSION=jdk8u352-b08

FROM eclipse-temurin:8-jdk-jammy

# To add any new packages, add it at the end of line 
# > apt-get install curl jq
RUN apt-get update \
    && apt-get install -y curl jq htop \ 
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*