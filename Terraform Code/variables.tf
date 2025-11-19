variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-2"
}

variable "instance_count" {
  description = "The number of EC2 instances to deploy"
  type        = number
  default     = 4
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_pair_name" {
  description = "The name of an existing EC2 Key Pair for SSH access"
  type        = string
  default     = "my_keypair"
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to SSH to instances"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # Change this to your IP range for better security
}

variable "root_volume_size" {
  description = "Size of the root EBS volume in GB"
  type        = number
  default     = 8
}

variable "environment" {
  description = "Environment name for resource tagging"
  type        = string
  default     = "dev"
}