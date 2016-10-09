#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Usage: $0 <username> <version>"
    exit 1
fi

version="$2"
baseurl='https://aperture.appdynamics.com/download/prox/download-file'
loginurl='https://login.appdynamics.com/sso/login/'

read -p "Password: " -s password

curl --referer http://www.appdynamics.com -c ./cookies.txt -d "username=$1&password=$password" $loginurl

curl -L -o dbagent.zip -b ./cookies.txt $baseurl/db/$version/dbagent-$version.zip

unzip dbagent.zip

rm -rf ./cookies.txt dbagent.zip

exit 0
