#!/bin/sh

set -e

export JVM_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -XX:ReservedCodeCacheSize=96m -XX:+TieredCompilation -XX:MaxPermSize=1024m -Xms512m -Xmx2048m -Xss2m"

BASEDIR=`dirname $0`
DBUILD_CONF="$BASEDIR/configuration/twitter-oss.dbuild"

echo "Running dbuild with $DBUILD_CONF"
$BASEDIR/bin/dbuild $DBUILD_CONF
