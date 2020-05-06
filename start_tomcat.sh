#!/bin/bash
TOMCAT_DIR=/root/soft/apache-tomcat-8.5.47/bin
count=' ps -ef | grep -w tomcat | grep -v "grep" | wc -1 '
echo $count
if [$count -le 0]; then
        echo "tomcat is not run"
        cd $TOMCAT_DIR
        sudo ./startup.sh
        echo "Tomcat 启动成功"
else
        echo "tomcat is run"
        cd $TOMCAT_DIR
        sudo ./shutdown.sh
        sudo ./startup.sh
        echo "Tomcat 启动成功"
fi
