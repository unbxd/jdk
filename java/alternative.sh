#!/bin/bash

set -e

update-alternatives --install /usr/bin/java 		java 				/usr/lib/jvm/${JRE_NAME}/bin/java    180
update-alternatives --install /usr/bin/javaws 		javaws 				/usr/lib/jvm/${JRE_NAME}/bin/javaws    180
update-alternatives --install /usr/bin/jcontrol 	jcontrol 			/usr/lib/jvm/${JRE_NAME}/bin/jcontrol    180
update-alternatives --install /usr/bin/jjs 			jjs 				/usr/lib/jvm/${JRE_NAME}/bin/jjs    180
update-alternatives --install /usr/bin/keytool 		keytool 			/usr/lib/jvm/${JRE_NAME}/bin/keytool    180
update-alternatives --install /usr/bin/orbd 		orbd 				/usr/lib/jvm/${JRE_NAME}/bin/orbd    180
update-alternatives --install /usr/bin/pack200 		pack200 			/usr/lib/jvm/${JRE_NAME}/bin/pack200    180
update-alternatives --install /usr/bin/policytool 	policytool 			/usr/lib/jvm/${JRE_NAME}/bin/policytool    180
update-alternatives --install /usr/bin/rmid 		rmid 				/usr/lib/jvm/${JRE_NAME}/bin/rmid    180
update-alternatives --install /usr/bin/rmiregistry 	rmiregistry 		/usr/lib/jvm/${JRE_NAME}/bin/rmiregistry    180
update-alternatives --install /usr/bin/servertool 	servertool 			/usr/lib/jvm/${JRE_NAME}/bin/servertool    180
update-alternatives --install /usr/bin/tnameserv 	tnameserv 			/usr/lib/jvm/${JRE_NAME}/bin/tnameserv    180
update-alternatives --install /usr/bin/unpack200 	unpack200 			/usr/lib/jvm/${JRE_NAME}/bin/unpack200  180 