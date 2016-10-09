# AppDynamics DB Agent to deploy as CloudFoundry App
## Prepare
+ Download the DB Agent you want to use by `./get-agent.sh <Portal User> <Agent Version X.X.X.X>`
+ [Alter the configuration as per documentation](https://docs.appdynamics.com/display/latest/Installing+the+Database+Agent)
## Deploy
+ `cf push <APP Name>`
The App Name will also be the DB Agent Name within appdynamics
## Clean
+ Use `./clean.sh` to delete the Agent files
