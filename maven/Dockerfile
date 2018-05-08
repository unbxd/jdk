FROM oracle-jdk8-base:latest

# Asterix Project
ADD projects/asterix/pom.xml /mvn/asterix/pom.xml

WORKDIR /mvn/asterix

RUN mvn dependency:go-offline
