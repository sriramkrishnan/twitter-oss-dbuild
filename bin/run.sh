#!/bin/sh

set -e
set -x

export JVM_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -XX:ReservedCodeCacheSize=96m -XX:+TieredCompilation -XX:MaxPermSize=1024m -Xms512m -Xmx2048m -Xss2m"

BASEDIR=$(dirname $(dirname $0))
DBUILD_CONF="$BASEDIR/configuration/twitter-oss.dbuild"

$BASEDIR/bin/dbuild -d $DBUILD_CONF
