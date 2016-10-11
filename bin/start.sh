$PWD/.java-buildpack/open_jdk_jre/bin/java $JAVA_OPTS  \
-Ddbagent.name="$(ruby -e "require 'json' ; a = JSON.parse(ENV['VCAP_APPLICATION']);puts \"#{a['application_name']}\"")" \
-Dappdynamics.agent.uniqueHostId="$(ruby -e "require 'json' ; a = JSON.parse(ENV['VCAP_APPLICATION']);puts \"#{a['application_name']}:#{a['instance_index']}\"")" \
-jar $PWD/db-agent.jar
