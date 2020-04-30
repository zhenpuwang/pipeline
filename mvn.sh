#!/bin/bash
echo ">>>>>>>>>>>>>>进入cron job目录<<<<<<<<<<<<<<<"
cd $PROJECT_NAME
echo ">>>>>>>>>>>>>>开始执行构建<<<<<<<<<<<<<<<"
mvn clean
mvn install
mvn package
