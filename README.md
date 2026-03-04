Secure AWS VPC Terraform Template


## Production Version

This repository contains the community version of the Secure AWS VPC Terraform template.

The full packaged version is available here:

https://muizdeensanni.gumroad.com/l/secure-aws-vpc-terraform-template


This package provides a production-ready AWS VPC infrastructure built with Terraform.

Included:

terraform/
  Terraform code that deploys the VPC, subnets, routing, and NAT gateway.

docs/
  Detailed explanation of the architecture and usage.

examples/
  Example variables file to customize deployments.

Quick start:

1. Configure AWS CLI credentials.
2. Navigate into the terraform directory.

cd terraform

3. Initialize Terraform.

terraform init

4. Deploy the infrastructure.

terraform apply

Terraform will create a multi-AZ VPC with public and private subnets.

For full details see:

docs/README.md
