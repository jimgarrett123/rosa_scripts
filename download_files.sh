#!/bin/sh
export PATH=$HOME/bin:$PATH
echo Please provide your Scoarboard Server URL
read serverUrl
export SCOREBOARD_SERVER="$serverUrl"
mkdir $HOME/bin
cd $HOME/bin
wget https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/stable/openshift-client-linux.tar.gz
wget https://mirror.openshift.com/pub/openshift-v4/clients/rosa/latest/rosa-linux.tar.gz
tar -xvf rosa-linux.tar.gz
tar -xvf openshift-client-linux.tar.gz
cd $HOME
