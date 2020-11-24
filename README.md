# AWS Terraform

I don't use TF often enough - tracking some notes here:  
This is an absolutely basic, uncomplicated get something created quickly setup


## Git Config
You probably want to exclude/ignore some files if you plan on using Git and Terraform  
I don't think it's a great idea to run Terraform in your git repo anyhow...
Here are a few things you like (at a minimum) should have:
```
$ cat ~/.gitignore_global
.DS_Store
terraform.tfstate
terraform.tfstate.backup
```

## How to use this
Copy the Terraform directory to a working location
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
