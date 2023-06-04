
module "ec2_jenkins" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "3.0.0"
  name                   = "${var.environment}-jenkins"
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  user_data              = file("${path.module}/install_jenkins.sh")
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.jenkins_sg.security_group_id]
  subnet_id              = var.subnet_id
  iam_instance_profile   = aws_iam_instance_profile.test_profile.name
  tags                   = local.common_tags
}
