# variables.tf
#  NOTE:  A number of these "lists" will be dynamically cataloged later
#         Ex.  If you have 2 AZ listed, the vpc.tf will create 2 public subnets
#              If you have 3 AZ listed, then it will create 3
#         The farther down this file, the less likely it is that you should need to modify the value
variable "aws_region" {
  default   = "us-east-1"
}

variable "availability_zones" {
  type      = list
  default   = ["us-east-1", "us-east-2", "us-west-1", "us-west-2"]
}

variable "vpc_cidr" {
  default   = "10.160.0.0/16"
}

variable "subnets_public_cidr" {
  type      = list
  default   = ["10.160.0.0/22", "10.160.4.0/22", "10.160.8.0/22"]
}

# =============================================================================
variable "domain_name_tld" {
  type      = string
  default   = "clouditoutloud.com"
}

# =============================================================================
# aws ec2 describe-images --owners 309956199498 --query 'sort_by(Images, &CreationDate)[*].[CreationDate,Name,ImageId]' --filters "Name=name,Values=RHEL-7.8*" --region us-east-1 --output table
# aws ec2 describe-images --owners 309956199498 --query 'sort_by(Images, &CreationDate)[*].[ImageId]' --filters "Name=name,Values=RHEL-7.8_HVM_GA*" --region us-east-1 --output text
variable "rhel78-ami" {
  type      = string
  default   = "ami-08e923f2f38197e46"
}

variable "instance_type_bastion" {
  type      = string
  default   = "t3.micro"
}

# =============================================================================
variable "ingress_cidr" {
  type          = list
  default       = [ "0.0.0.0/0" ]
}
variable "egress_cidr" {
  type          = list
  default       = [ "0.0.0.0/0" ]
}
variable "source_cidr" {
  type          = list
  default       = [ "0.0.0.0/0" ]
}

# =============================================================================
variable "dnsSupport" {
  default = true
}
variable "dnsHostNames" {
  default = true
}
variable "instanceTenancy" {
  default = "default"
}
