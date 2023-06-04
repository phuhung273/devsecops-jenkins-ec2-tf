resource "aws_route53_record" "app_dns" {
  zone_id = data.aws_route53_zone.mydomain.zone_id
  name    = "jenkins.iamharrytran.com"
  type    = "A"
  ttl     = 300
  records = [aws_eip.ec2_eip.public_ip]
}
