cd $HOME/terraform-vpc-example
terraform init
terraform plan -out rosa.tfplan -var region=us-east-1
terraform apply rosa.tfplan
