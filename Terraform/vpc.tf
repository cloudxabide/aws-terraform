resource "aws_vpc" "devkit-vpc" {
    cidr_block           = "10.0.0.0/16"
    enable_dns_support   = "true" # gives you an internal domain name support
    enable_dns_hostnames = "true" # gives you an internal host name support
    enable_classiclink   = "false"
    instance_tenancy     = "default"    

    tags = {
        Name = "DevKit VPC"
    }
}
