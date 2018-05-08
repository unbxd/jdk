FROM oracle-jdk8-base:latest

WORKDIR /mvn

ADD projects/asterix/pom.xml /mvn/asterix/pom.xml

RUN mvn dependency:go-offline
