# Back end security group 
resource "aws_security_group" "sprofile-backend-sg" {
  name        = "sprofile-backend-sg"
  description = "Security grp for  RDS. active mq,elastic cache"
  vpc_id      = module.vpc.vpc_id




  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    # allow all traffic from sprofile-prod sg.ie all ec2 instances in beanstalk
    # security_groups = [aws_security_group.sprofile-prod-sg.id]

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" #-1 means all the protocols
    cidr_blocks = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }
}