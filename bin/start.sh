$PWD/.java-buildpack/open_jdk_jre/bin/java $JAVA_OPTS  \
-Ddbagent.name="$(ruby -e "require 'json' ; a = JSON.parse(ENV['VCAP_APPLICATION']);puts \"#{a['application_name']}\"")" \
-jar $PWD/db-agent.jar
