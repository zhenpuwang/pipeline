#!/bin/bash
TOMCAT_DIR=/root/soft/apache-tomcat-8.5.47/bin
export PATH=/root/soft/jdk1.8.0_172/bin:$PATH
count=' ps -ef | grep -w tomcat | grep -v "grep" | wc -1 '
echo $count
if [$count -le 0]; then
        echo "tomcat is not run" && cd $TOMCAT_DIR        
        echo "移动项目"
        sudo ./startup.sh && echo "Tomcat 启动成功"   
else
        echo "tomcat is run" && cd $TOMCAT_DIR    
        sudo ./shutdown.sh
        echo "移动项目"
        sudo ./startup.sh && echo "Tomcat 启动成功"       
fi
