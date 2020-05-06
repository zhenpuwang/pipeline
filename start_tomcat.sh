#!/bin/bash
TOMCAT_DIR=/root/soft/apache-tomcat-8.5.47/bin
export JAVA_HOME=/root/soft/jdk1.8.0_172
export CLASSPATH=.:$JAVA_HOME/lib:$CLASSPATH
export PATH=$JAVA_HOME/bin:$PATH
count=`ps -ef | grep -w tomcat | grep -v "grep" | wc -l`
echo $count
if [$count -le 0]; then
        echo "tomcat is not run" && cd $TOMCAT_DIR        
        sudo ./startup.sh && echo "Tomcat 启动成功"   
else
        echo "tomcat is run" && cd $TOMCAT_DIR    
        sudo ./shutdown.sh
        sudo ./startup.sh && echo "Tomcat 启动成功"       
fi
