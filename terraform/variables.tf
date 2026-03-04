variable "project_name" {
  description = "Name used for tagging and resource naming."
  type        = string
  default     = "secure-vpc"
}

variable "aws_region" {
  description = "AWS region to deploy into."
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.20.0.0/16"
}

variable "az_count" {
  description = "How many Availability Zones to spread across (2 or 3 are typical)."
  type        = number
  default     = 2

  validation {
    condition     = var.az_count >= 2 && var.az_count <= 3
    error_message = "az_count must be 2 or 3."
  }
}

variable "enable_nat_gateway" {
  description = "Whether to deploy NAT Gateway(s) for private subnet outbound internet."
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "If true, deploy one NAT Gateway (cheaper). If false, deploy one per AZ (more resilient)."
  type        = bool
  default     = true
}
