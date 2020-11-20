resource "aws_instance" "staging" {
  ami                      = var.rhel8-ami
  instance_type            = var.instance_type_staging
  vpc_security_group_ids   = aws_security_group.allow_all_ssh.*.id
  key_name                 = aws_key_pair.blkbrd.key_name

  tags = {
    Name = "Bastion Host"
    Purpose = "DevKit Bastion"
  }
}
