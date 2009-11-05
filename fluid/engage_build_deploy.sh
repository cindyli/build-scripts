#!/bin/bash
source /home/flexibus/scripts/fluid/fluid_tomcat_env.sh
CONTINUUM_ENGAGE_PROJECT=/home/flexibus/continuum/working/56

# rebuild engage with ant
cd $CONTINUUM_ENGAGE_PROJECT/fluid-engage-kettle/build-scripts
ant
check_errs $? "ant build failed"

# copy the war file to tomcat and remove the old code
rm -rf $CATALINA_HOME/webapps/engage

cp $CONTINUUM_ENGAGE_PROJECT/fluid-engage-kettle/products/*src.war $CATALINA_HOME/webapps/engage.war
check_errs $? "copy WAR failed"

