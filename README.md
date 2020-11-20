# AWS Terraform

I don't use TF often enough - tracking some notes here


## Git Config
You probably want to exclude/ignore some files if you plan on using Git and Terraform
```
$ cat ~/.gitignore_global
.DS_Store
terraform.tfstate
terraform.tfstate.backup
```

## How to use this
Copy the Terraform directory somewhere handy
```
mkdir $HOME/Working/
cp -R Terraform $HOME/Working/
cd $HOME/Working/Terraform
vi variables.tf
terraform init
terraform plan
terraform apply
```

Once it is complete, you should have a publicly accessible EC2 instance (VPC, Subnet, InternetGateway)
