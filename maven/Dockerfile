FROM oracle-jdk8-base:latest

# Solr Plugin
#--------------------------------------------------
ADD projects/solr-plugin/pom.xml /mvn/solr-plugin/pom.xml
WORKDIR /mvn/solr-plugin
RUN mvn dependency:go-offline

# Asterix Project
#--------------------------------------------------
ADD projects/asterix/pom.xml /mvn/asterix/pom.xml
WORKDIR /mvn/asterix
RUN mvn install:install-file -DgroupId=com.unbxd -DartifactId=solr-plugin -Dversion=0.2.2 -Dpackaging=jar \
        -Dfile=solr-plugin-latest.jar
RUN mvn dependency:go-offline
