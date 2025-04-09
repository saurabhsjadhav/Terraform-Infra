module "vpc" {
  source                = "./modules/vpc"
  vpc_cidr              = var.vpc_cidr
  public_subnet_1_cidr  = var.public_subnet_1_cidr
  public_subnet_2_cidr  = var.public_subnet_2_cidr
  private_subnet_1_cidr = var.private_subnet_1_cidr
  private_subnet_2_cidr = var.private_subnet_2_cidr
}

module "ec2" {
  source                = "./modules/ec2"
  instance_type         = var.instance_type
  subnet_id             = module.vpc.public_subnet_1_id
  vpc_security_group_id = module.vpc.default_sg_id
  key_name              = var.key_name
}

module "rds" {
  source                = "./modules/rds"
  subnet_1_id           = module.vpc.private_subnet_1_id
  subnet_2_id           = module.vpc.private_subnet_2_id
  db_engine             = var.db_engine
  db_instance_class     = var.db_instance_class
  db_name               = var.db_name
  db_username           = var.db_username
  db_password           = var.db_password
  vpc_security_group_id = module.vpc.default_sg_id
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}
