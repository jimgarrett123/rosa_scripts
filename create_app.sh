#!/bin/sh
oc new-project cs-workshop-scoreboard-client
oc process -f https://raw.githubusercontent.com/andykrohg/cs-workshop-scoreboard-client/main/template.yml \
    -p "MY_NAME=$MY_NAME" \
    -p AWS_ACCESS_KEY_ID=$ROSA_AWS_ACCESS_KEY_ID \
    -p AWS_SECRET_ACCESS_KEY=$ROSA_AWS_SECRET_ACCESS_KEY \
    -p AWS_DEFAULT_REGION=$ROSA_AWS_DEFAULT_REGION \
    -p ROSA_OCM_TOKEN=$ROSA_OCM_TOKEN \
    -p SCOREBOARD_SERVER=$SCOREBOARD_SERVER | oc apply -f -
