# outputs.tf

output "public_dns" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, staging-node is only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.ciol-staging.*.public_dns
}

output "key_pair_name" {
  description = "The name of the key-pair used to create this IaC"
  value       = var.key_pair_name
}
