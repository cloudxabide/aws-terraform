# variables.tf
#  NOTE:  A number of these "lists" will be dynamically cataloged later
#         Ex.  If you have 2 AZ listed, the vpc.tf will create 2 public subnets
#              If you have 3 AZ listed, then it will create 3
#         The farther down this file, the less likely it is that you 
#           should need to modify the value that is being set.

variable "aws_profile" {
  default = "jradtke-admin"
}
resource "aws_key_pair" "blkbrd" {
  key_name   = "blkbrd"
  public_key = file("~/.ssh/blkbrd.pub")
}

variable "aws_region" {
  default   = "us-gov-west-1"
}
variable "availability_zones" {
  type      = list
  default   = ["us-gov-east-1a", "us-gov-east-1b", "us-gov-east-1c", "us-gov-west-1a", "us-gov-west-1b", "us-gov-west-1c"]
}

variable "domain_name_tld" {
  type      = string
  default   = "clouditoutloud.com"
}
# 
# =============================================================================
## TYPICALLY MODIFIED VARIABLES - END
# =============================================================================
#

variable "vpc_cidr" {
  default   = "10.160.0.0/16"
}

variable "subnets_public_cidr" {
  type      = list
  default   = ["10.160.0.0/22", "10.160.4.0/22", "10.160.8.0/22"]
}

# =============================================================================
data "aws_ami_ids" "rhel8-ami" {
  owners = ["219670896067"]

  filter {
    name   = "name"
    values = ["RHEL-8.2_HVM-*x86_64*"]
  }
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
