#!/bin/bash
source /home/flexibus/scripts/uportal/uportal_tomcat_env.sh

cd $UPORTAL_HOME
nohup /home/flexibus/bin/apache-ant-1.6.5/bin/ant-1.65 hsql&
