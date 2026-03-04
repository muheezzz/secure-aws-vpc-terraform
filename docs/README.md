# Secure AWS VPC Terraform Template

Deploy a production-ready AWS VPC with public and private subnets across multiple availability zones using Terraform.

This template creates a secure networking foundation that can be used for Kubernetes clusters, EC2 workloads, databases, and other cloud infrastructure.

---

## Architecture Overview

This Terraform template deploys:

- VPC with DNS support enabled
- Public subnets for load balancers or bastion hosts
- Private subnets for application workloads
- Internet Gateway for public access
- NAT Gateway for private subnet outbound internet access
- Route tables for public and private traffic
- Multi-Availability Zone architecture

Typical architecture:

Internet  
↓  
Internet Gateway  
↓  
Public Subnets (Load Balancers / Bastion Hosts)  
↓  
Private Subnets (Applications / Databases)

---

## Requirements

You must have the following installed:

- Terraform >= 1.5
- AWS CLI configured
- AWS account with permissions to create networking resources

---

## Quick Start

Clone or download the template.

Then run:

terraform init  
terraform apply

Terraform will prompt you for confirmation before creating resources.

---

## Variables

| Variable | Description | Default |
|--------|-------------|--------|
| project_name | Name used for tagging resources | secure-vpc |
| aws_region | AWS region to deploy infrastructure | us-east-1 |
| vpc_cidr | CIDR block for the VPC | 10.20.0.0/16 |
| az_count | Number of availability zones | 2 |
| enable_nat_gateway | Enable NAT gateway for private subnets | true |

---

## Outputs

After deployment Terraform returns:

- VPC ID
- Public subnet IDs
- Private subnet IDs
- Availability zones
- Internet gateway ID
- NAT gateway ID

These outputs can be used to deploy EKS clusters, EC2 instances, or databases.

---

## Use Cases

This infrastructure template is useful for:

- Kubernetes clusters (EKS)
- Secure EC2 deployments
- Application hosting environments
- DevSecOps lab environments
- Multi-tier application architectures

---

## Security Notes

- Workloads should run in private subnets
- Public subnets should only contain load balancers or bastion hosts
- Security groups should enforce least privilege

---

## License

This template is intended for educational and infrastructure automation purposes.
