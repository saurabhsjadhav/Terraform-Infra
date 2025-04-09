resource "aws_db_instance" "default" {
  allocated_storage    = 20
  engine               = var.db_engine
  instance_class       = var.db_instance_class
  identifier           = var.db_name       # ✅ This is for the DB instance name
  db_name = var.db_name   # ✅ Correct attribute
  username             = var.db_username
  password             = var.db_password
  skip_final_snapshot  = true
  publicly_accessible  = false
  db_subnet_group_name = aws_db_subnet_group.default.name
  vpc_security_group_ids = [var.vpc_security_group_id]
}

resource "aws_db_subnet_group" "default" {
  name       = "main-subnet-group"
  subnet_ids = [var.subnet_1_id, var.subnet_2_id]

  tags = {
    Name = "RDS Subnet Group"
  }
}
