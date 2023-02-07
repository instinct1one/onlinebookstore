#!/bin/bash
​
#copying mvn settings.xml to /usr/share/maven/config
sudo cp -rf ./settings.xml /usr/share/maven/conf/
​
#copying tomcat-users.xml to /var/lib/tomcat9/conf
sudo cp -rf ./tomcat-users.xml /var/lib/tomcat9/conf/
