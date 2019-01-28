FROM debian:stretch

ENV FN="jdk1.8.0_201"

ADD . /java
ADD oracle-jdk.tar.gz "/usr/lib/jvm/"

WORKDIR /java

# Set up system
RUN apt-get update && apt-get install -y wget tar java-common
RUN ./generate_jinfo_file.sh && ./update_alternative.sh
RUN update-java-alternatives -s "${FN}"

# Set Environment Variables
ENV JAVA_HOME="/usr/lib/jvm/${FN}"

# Run and check Version
RUN java -version

RUN apt-get install -y maven
