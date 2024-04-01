#!/bin/sh
echo What is your name?
read name

echo Please provide your ROSA Login Token
read rosaToken

export MY_NAME="$name"
export ROSA_OCM_TOKEN="$rosaToken"
export SCOREBOARD_SERVER="http://cs-workshop-scoreboard-server-cs-server.apps.jag-aws2.87zn.p1.openshiftapps.com"

export ROSA_AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
export ROSA_AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)
export ROSA_AWS_DEFAULT_REGION=$(aws configure get region)
