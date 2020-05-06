#!/bin/bash
TOMCAT_DIR=/root/soft/apache-tomcat-8.5.47/bin
count='ps -ef | grep -w tomcat | grep -v "grep" | wc -1'
if [$count -le 0]; then
        echo "tomcat is not run"
        cd $TOMCAT_DIR
        ./startup.sh
else
        echo "tomcat is run"
        cd $TOMCAT_DIR
        ./shutdown.sh
        ./startup.sh
fi
