# Create Elastic IP for Bastion Host
# Resource - depends_on Meta-Argument
resource "aws_eip" "ec2_eip" {
  depends_on = [module.ec2_jenkins]
  instance   = module.ec2_jenkins.id
  tags       = local.common_tags
}
