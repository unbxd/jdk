#!/bin/bash

set -e

update-alternatives --install /usr/bin/jaotc jaotc "/usr/lib/jvm/${JDK_NAME}/bin/jaotc" 180
update-alternatives --install /usr/bin/jar jar "/usr/lib/jvm/${JDK_NAME}/bin/jar" 180
update-alternatives --install /usr/bin/jarsigner jarsigner "/usr/lib/jvm/${JDK_NAME}/bin/jarsigner" 180
update-alternatives --install /usr/bin/java java "/usr/lib/jvm/${JDK_NAME}/bin"/java 180
update-alternatives --install /usr/bin/javac javac "/usr/lib/jvm/${JDK_NAME}/bin/javac" 180
update-alternatives --install /usr/bin/javadoc javadoc "/usr/lib/jvm/${JDK_NAME}/bin/javadoc" 180
update-alternatives --install /usr/bin/javap javap "/usr/lib/jvm/${JDK_NAME}/bin/javap" 180
update-alternatives --install /usr/bin/jcmd jcmd "/usr/lib/jvm/${JDK_NAME}/bin/jcmd" 180
update-alternatives --install /usr/bin/jconsole jconsole "/usr/lib/jvm/${JDK_NAME}/bin/jconsole" 180
update-alternatives --install /usr/bin/jdeprscan jdeprscan "/usr/lib/jvm/${JDK_NAME}/bin/jdeprscan" 180
update-alternatives --install /usr/bin/jdb jdb "/usr/lib/jvm/${JDK_NAME}/bin/jdb" 180
update-alternatives --install /usr/bin/jdeps jdeps "/usr/lib/jvm/${JDK_NAME}/bin/jdeps" 180
update-alternatives --install /usr/bin/jfr jfr "/usr/lib/jvm/${JDK_NAME}/bin/jfr" 180
update-alternatives --install /usr/bin/jhsdb jhsdb "/usr/lib/jvm/${JDK_NAME}/bin/jhsdb" 180
update-alternatives --install /usr/bin/jimage jimage "/usr/lib/jvm/${JDK_NAME}/bin/jimage" 180
update-alternatives --install /usr/bin/jinfo jinfo "/usr/lib/jvm/${JDK_NAME}/bin/jinfo" 180
update-alternatives --install /usr/bin/jjs jjs "/usr/lib/jvm/${JDK_NAME}/bin/jjs" 180
update-alternatives --install /usr/bin/jlink jlink "/usr/lib/jvm/${JDK_NAME}/bin/jlink" 180
update-alternatives --install /usr/bin/jmap jmap "/usr/lib/jvm/${JDK_NAME}/bin/jmap" 180
update-alternatives --install /usr/bin/jmod jmod "/usr/lib/jvm/${JDK_NAME}/bin/jmod" 180
update-alternatives --install /usr/bin/jps jps "/usr/lib/jvm/${JDK_NAME}/bin/jps" 180
update-alternatives --install /usr/bin/jrunscript jrunscript "/usr/lib/jvm/${JDK_NAME}/bin/jrunscript" 180
update-alternatives --install /usr/bin/jshell jshell "/usr/lib/jvm/${JDK_NAME}/bin/jshell" 180
update-alternatives --install /usr/bin/jstack jstack "/usr/lib/jvm/${JDK_NAME}/bin/jstack" 180
update-alternatives --install /usr/bin/jstat jstat "/usr/lib/jvm/${JDK_NAME}/bin/jstat" 180
update-alternatives --install /usr/bin/jstatd jstatd "/usr/lib/jvm/${JDK_NAME}/bin/jstatd" 180
update-alternatives --install /usr/bin/keytool keytool "/usr/lib/jvm/${JDK_NAME}/bin"/keytool 180
update-alternatives --install /usr/bin/pack200 pack200 "/usr/lib/jvm/${JDK_NAME}/bin"/pack200 180
update-alternatives --install /usr/bin/rmic rmic "/usr/lib/jvm/${JDK_NAME}/bin/rmic" 180
update-alternatives --install /usr/bin/rmid rmid "/usr/lib/jvm/${JDK_NAME}/bin"/rmid 180
update-alternatives --install /usr/bin/rmiregistry rmiregistry "/usr/lib/jvm/${JDK_NAME}/bin"/rmiregistry 180
update-alternatives --install /usr/bin/serialver serialver "/usr/lib/jvm/${JDK_NAME}/bin/serialver" 180
update-alternatives --install /usr/bin/unpack200 unpack200 "/usr/lib/jvm/${JDK_NAME}/bin"/unpack200 180
