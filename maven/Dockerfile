FROM oracle-java8-base:latest

WORKDIR /mvn/asterix

ADD ./projects/asterix/pom.xml /mvn/asterix/pom.xml

RUN mvn dependency:go-offline
