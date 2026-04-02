#!/bin/sh
export PATH=$HOME/bin:$PATH
echo Please provide your Scoarboard Server URL
#read serverUrl
export SCOREBOARD_SERVER="http://cs-workshop-scoreboard-server-scorecard-server.apps.jag2-aws.t0ij.p1.openshiftapps.com"
mkdir $HOME/bin
cd $HOME/bin
wget https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/stable/openshift-client-linux.tar.gz
wget https://mirror.openshift.com/pub/cgw/rosa/latest/rosa-linux.tar.gz
wget https://developers.redhat.com/content-gateway/rest/browse/pub/cgw/ocm/latest/ocm_linux_amd64.zip
tar -xvf rosa-linux.tar.gz
tar -xvf openshift-client-linux.tar.gz
unzip ocm_linux_amd64.zip
mv ocm ~/bin/.
cd $HOME
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
git clone https://github.com/openshift-cs/terraform-vpc-example
