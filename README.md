# AWS Infrastructure Automation with Terraform

This project automates the provisioning of AWS infrastructure using Terraform. It sets up a VPC with public and private subnets, an internet gateway, route tables, EC2 instance, RDS database, and an S3 bucket using reusable Terraform modules.

## 🚀 Features

- VPC with:
  - 2 Public Subnets
  - 2 Private Subnets
  - Internet Gateway
  - Public Route Table
  - Default Security Group
- EC2 Instance (Ubuntu) in Public Subnet
- RDS (PostgreSQL/MySQL) in Private Subnet
- S3 Bucket
- Reusable Terraform Modules
- Remote State Management (optional)

---

## 🗂️ Project Structure

```bash
aws-infrastructure-terraform/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── terraform.tfvars
│
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── rds/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── s3/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
└── README.md


✅ Prerequisites
AWS CLI configured (aws configure)
Terraform v1.3+
AWS account with access to EC2, RDS, VPC, and S3

 Setup Instructions
 Clone the Repository
  git clone https://github.com/your-username/aws-infrastructure-terraform.git
  cd aws-infrastructure-terraform

  Initialize Terraform
    terraform init
    terraform plan
    terraform apply
    terraform destroy




⚙️ Modules Overview

VPC Module
Creates a custom VPC with:
2 Public Subnets
2 Private Subnets
Internet Gateway
Public Route Table
Default Security Group

EC2 Module
Launches an Ubuntu EC2 instance in a public subnet with SSH access enabled via a key pair.

RDS Module
Creates a managed PostgreSQL or MySQL instance in private subnets with optional multi-AZ support and security groups.

S3 Module
Creates an S3 bucket for general-purpose storage or backups.

📌 Notes
Ensure your AWS key pair is created in the specified region before applying.
Adjust RDS engine and instance type in terraform.tfvars as needed.
Consider adding a NAT Gateway if instances in private subnets need internet access.

🛠️ Author
*Saurabh Jadhav.* 
Project: AWS Infrastructure Automation with Terraform

📄 License
This project is licensed under the MIT License.
Let me know if you want to customize the README with actual values from your Terraform configuration files or GitHub link.













