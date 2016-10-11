# AppDynamics DB Agent to deploy as CloudFoundry App

To deploy the Application to CloudFoundry the [Dist Zip Container](https://github.com/cloudfoundry/java-buildpack/blob/master/docs/container-dist_zip.md) of the [Java Buildpack](https://github.com/cloudfoundry/java-buildpack) is used.

## Prepare
1. Download the DB Agent you want to use
  * by `./get-agent.sh <Portal User> <Agent Version X.X.X.X>` (Will Prompt for Password)
  * by downloading manually and unzipping to this directory
2. [Alter the configuration as per documentation](https://docs.appdynamics.com/display/latest/Installing+the+Database+Agent)
  * Change `conf/controller-info.xml`

## Deploy

1. `cf push <Application Name>`
  * The `<Application Name>` will also be the DB Agent Name within AppDynamics as it takes `application_name` from `VCAP_APPLICATION`

## Clean

1. Use `./clean.sh` to delete the Agent files
