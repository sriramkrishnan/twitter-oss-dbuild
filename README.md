# Using dbuild to cross build Twitter OSS projects

1. Use the following JVM settings: export JVM_OPTS="-XX:+CMSClassUnloadingEnabled -XX:+UseConcMarkSweepGC -XX:ReservedCodeCacheSize=96m -XX:+TieredCompilation -XX:MaxPermSize=1024m -Xms512m -Xmx2048m -Xss2m"
2. Run it as: ./bin/dbuild configuration/twitter-oss.dbuild

The properties file can be seen at: https://github.com/sriramkrishnan/twitter-oss-dbuild/blob/master/bin/dbuild.properties

The configuration can be seen at: https://github.com/sriramkrishnan/twitter-oss-dbuild/blob/master/configuration/twitter-oss.dbuild
