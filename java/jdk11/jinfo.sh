#!/bin/bash

set -e 


echo "Jinfo Path: /usr/lib/jvm/.${JDK_NAME}.jinfo"

FILE="/usr/lib/jvm/.${JDK_NAME}.jinfo"

echo "name=${JDK_NAME}" >> "${FILE}"
echo "alias=adoptOpenJdk-jdk11" >> "${FILE}"
echo "priority=180" >> "${FILE}"
echo "section=main" >> "${FILE}"
echo "" >> "${FILE}"
echo "jdk jaotc /usr/lib/jvm/${JDK_NAME}/bin/jaotc" >> "${FILE}"
echo "jdk jar /usr/lib/jvm/${JDK_NAME}/bin/jar" >> "${FILE}"
echo "jdk jarsigner /usr/lib/jvm/${JDK_NAME}/bin/jarsigner" >> "${FILE}"
echo "jdk java /usr/lib/jvm/${JDK_NAME}/bin/java" >> "${FILE}"
echo "jdk javac /usr/lib/jvm/${JDK_NAME}/bin/javac" >> "${FILE}"
echo "jdk javadoc /usr/lib/jvm/${JDK_NAME}/bin/javadoc" >> "${FILE}"
echo "jdk javap /usr/lib/jvm/${JDK_NAME}/bin/javap" >> "${FILE}"
echo "jdk jcmd /usr/lib/jvm/${JDK_NAME}/bin/jcmd" >> "${FILE}"
echo "jdk jconsole /usr/lib/jvm/${JDK_NAME}/bin/jconsole" >> "${FILE}"
echo "jdk jdb /usr/lib/jvm/${JDK_NAME}/bin/jdb" >> "${FILE}"
echo "jdk jdeprscan /usr/lib/jvm/${JDK_NAME}/bin/jdeprscan" >> "${FILE}"
echo "jdk jdeps /usr/lib/jvm/${JDK_NAME}/bin/jdeps" >> "${FILE}"
echo "jdk jfr /usr/lib/jvm/${JDK_NAME}/bin/jfr" >> "${FILE}"
echo "jdk jhsdb /usr/lib/jvm/${JDK_NAME}/bin/jhsdb" >> "${FILE}"
echo "jdk jimage /usr/lib/jvm/${JDK_NAME}/bin/jimage" >> "${FILE}"
echo "jdk jinfo /usr/lib/jvm/${JDK_NAME}/bin/jinfo" >> "${FILE}"
echo "jdk jjs /usr/lib/jvm/${JDK_NAME}/bin/jjs" >> "${FILE}"
echo "jdk jlink /usr/lib/jvm/${JDK_NAME}/bin/jlink" >> "${FILE}"
echo "jdk jmap /usr/lib/jvm/${JDK_NAME}/bin/jmap" >> "${FILE}"
echo "jdk jmod /usr/lib/jvm/${JDK_NAME}/bin/jmod" >> "${FILE}"
echo "jdk jps /usr/lib/jvm/${JDK_NAME}/bin/jps" >> "${FILE}"
echo "jdk jrunscript /usr/lib/jvm/${JDK_NAME}/bin/jrunscript" >> "${FILE}"
echo "jdk jshell /usr/lib/jvm/${JDK_NAME}/bin/jshell" >> "${FILE}"
echo "jdk jstack /usr/lib/jvm/${JDK_NAME}/bin/jstack" >> "${FILE}"
echo "jdk jstat /usr/lib/jvm/${JDK_NAME}/bin/jstat" >> "${FILE}"
echo "jdk jstatd /usr/lib/jvm/${JDK_NAME}/bin/jstatd" >> "${FILE}"
echo "jdk keytool /usr/lib/jvm/${JDK_NAME}/bin/keytool" >> "${FILE}"
echo "jdk pack200 /usr/lib/jvm/${JDK_NAME}/bin/pack200" >> "${FILE}"
echo "jdk rmic /usr/lib/jvm/${JDK_NAME}/bin/rmic" >> "${FILE}"
echo "jdk rmid /usr/lib/jvm/${JDK_NAME}/bin/rmid" >> "${FILE}"
echo "jdk rmiregistry /usr/lib/jvm/${JDK_NAME}/bin/rmiregistry" >> "${FILE}"
echo "jdk serialver /usr/lib/jvm/${JDK_NAME}/bin/serialver" >> "${FILE}"
echo "jdk unpack200 /usr/lib/jvm/${JDK_NAME}/bin/unpack200" >> "${FILE}"

cat $FILE
