aws_region = "us-east-1"
vpc_cidr = "10.0.0.0/16"
public_subnet_1_cidr  = "10.0.1.0/24"
public_subnet_2_cidr  = "10.0.2.0/24"
private_subnet_1_cidr = "10.0.3.0/24"
private_subnet_2_cidr = "10.0.4.0/24"

instance_type = "t2.micro"
ami_id = "ami-0fc5d935ebf8bc3bc"  # Ubuntu Server 22.04 LTS (HVM), SSD Volume Type
key_name = "saurabh-key"

db_engine         = "mysql"
db_instance_class = "db.t3.micro"
db_name           = "mydb"
db_username       = "admin"
db_password       = "MySecurePass123!"  # must be at least 8 characters
bucket_name = "saurabh-terraform-bucket"
