#!/bin/sh
export PATH=$HOME/bin:$PATH
echo Please provide your Scoarboard Server URL
#read serverUrl
export SCOREBOARD_SERVER="http://cs-workshop-scoreboard-server-scorecard-server.apps.jag2-aws.t0ij.p1.openshiftapps.com"
mkdir $HOME/bin
cd $HOME/bin
wget https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/stable/openshift-client-linux.tar.gz
wget https://mirror.openshift.com/pub/openshift-v4/clients/rosa/latest/rosa-linux.tar.gz
tar -xvf rosa-linux.tar.gz
tar -xvf openshift-client-linux.tar.gz
chmod +x create_vpc.sh
cd $HOME
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
git clone https://github.com/openshift-cs/terraform-vpc-example
./rosa_scripts/create_vpc.sjh
