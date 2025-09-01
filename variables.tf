variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  # Amazon Linux 2 AMI in us-west-2
  default     = "ami-00271c85bf8a52b84"
}

variable "key_name" {
  description = "Name of AWS key pair"
  type        = string
}
