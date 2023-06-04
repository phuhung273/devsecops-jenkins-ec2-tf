module "jenkins_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.0.0"

  name                = "jenkins-sg"
  description         = "Security group with HTTP & SSH ports open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id              = var.vpc_id
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  # Open to CIDRs blocks (rule or from_port+to_port+protocol+description)
  ingress_with_cidr_blocks = [
    {
      from_port   = 8081
      to_port     = 8081
      protocol    = "tcp"
      description = "Allow Port 8081 from internet"
      cidr_blocks = "0.0.0.0/0"
    },
  ]

  egress_rules = ["all-all"]

  tags = local.common_tags
}
