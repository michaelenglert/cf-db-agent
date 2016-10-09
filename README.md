# AppDynamics DB Agent to deploy as CloudFoundry App
## Prepare
1. Download the DB Agent you want to use by `./get-agent.sh <Portal User> <Agent Version X.X.X.X>`
2. [Alter the configuration as per documentation](https://docs.appdynamics.com/display/latest/Installing+the+Database+Agent)
  * Change `conf/controller-info.xml`

## Deploy

1. `cf push <APP Name>`

The `<APP Name>` will also be the DB Agent Name within AppDynamics

## Clean

1. Use `./clean.sh` to delete the Agent files
