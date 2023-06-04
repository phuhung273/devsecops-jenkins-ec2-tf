

# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type        = string
  default     = "dev"
}
# Business Division
variable "business_division" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type        = string
  default     = "IT"
}

# Business Division
variable "region" {
  type    = string
  default = "us-east-1"
}

# Business Division
variable "vpc_id" {
  description = "Default VPC Id"
  type        = string
}

# Business Division
variable "subnet_id" {
  description = "Default VPC Id"
  type        = string
}
