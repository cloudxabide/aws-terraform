resource "aws_instance" "bastion" {
  ami                      = "var.rhel78-ami"
  instance_type            = "var.instance_type_bastion"
  vpc_security_group_ids   = aws_security_group.allow_all_ssh.*.id

  tags = {
    Name = "Bastion Host"
  }
}
