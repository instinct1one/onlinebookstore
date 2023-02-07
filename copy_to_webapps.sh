#!/bin/bash

#copying *.war to tomcat9/webapps
sudo cp -r $WORKSPACE/target/*.war /var/lib/tomcat9/webapps/
