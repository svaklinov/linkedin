########## web server host ################
resource "aws_instance" "this" {
  ami             = var.ami
  instance_type   = "t3.medium"
  subnet_id       = module.vpc.public_subnets[0]
  security_groups = [aws_security_group.http_access.id] # [module.vpc.default_security_group_id]

  tags = {
    Name = "vm-01"
  }

  depends_on = [module.vpc]
  user_data  = file("install.sh")
}