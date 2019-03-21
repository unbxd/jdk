#!/bin/bash

set -e 

echo "Jinfo Path: /usr/lib/jvm/.${JRE_NAME}.jinfo"

FILE="/usr/lib/jvm/.${JRE_NAME}.jinfo"

echo "name=${JRE_NAME}" >> "${FILE}"
echo "alias=oracle-jre1.8" >> "${FILE}"
echo "priority=180" >> "${FILE}"
echo "section=main" >> "${FILE}"
echo "" >> "${FILE}"
echo "jre unpack200 /usr/lib/jvm/${JRE_NAME}/bin/unpack200" >> "${FILE}"
echo "jre tnameserv /usr/lib/jvm/${JRE_NAME}/bin/tnameserv" >> "${FILE}"
echo "jre servertool /usr/lib/jvm/${JRE_NAME}/bin/servertool" >> "${FILE}"
echo "jre rmiregistry /usr/lib/jvm/${JRE_NAME}/bin/rmiregistry" >> "${FILE}"
echo "jre rmid /usr/lib/jvm/${JRE_NAME}/bin/rmid" >> "${FILE}"
echo "jre policytool /usr/lib/jvm/${JRE_NAME}/bin/policytool" >> "${FILE}"
echo "jre pack200 /usr/lib/jvm/${JRE_NAME}/bin/pack200" >> "${FILE}"
echo "jre orbd /usr/lib/jvm/${JRE_NAME}/bin/orbd" >> "${FILE}"
echo "jre keytool /usr/lib/jvm/${JRE_NAME}/bin/keytool" >> "${FILE}"
echo "jre jjs /usr/lib/jvm/${JRE_NAME}/bin/jjs" >> "${FILE}"
echo "jre jcontrol /usr/lib/jvm/${JRE_NAME}/bin/jcontrol" >> "${FILE}"
echo "jre javaws /usr/lib/jvm/${JRE_NAME}/bin/javaws" >> "${FILE}"
echo "jre java /usr/lib/jvm/${JRE_NAME}/bin/java" >> "${FILE}"

cat $FILE
