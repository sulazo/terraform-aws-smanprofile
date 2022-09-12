resource "aws_db_instance" "sprofile-rds" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  db_name              = "account"
  username             = "admin"
  password             = "admin123"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  multi_az             = true
  identifier           = "sprofile-rds"
  db_subnet_group_name = aws_db_subnet_group.sprofile_subnetGrp.name
  vpc_security_group_ids =[ aws_security_group.sprofile-backend-sg.id ]


}
resource "aws_db_subnet_group" "sprofile_subnetGrp" {
  name        = "sprofile_subnetgrp"
  description = "sprofile-rds"
  subnet_ids  = [module.vpc.private_subnets[0], module.vpc.private_subnets[1], module.vpc.private_subnets[2]]

  tags = {
    Name = "sprofile-subnetGrpN"
  }

}