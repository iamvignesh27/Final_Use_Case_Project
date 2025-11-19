output "instance_public_ips" {
  description = "List of public IP addresses for the deployed EC2 instances"
  value       = aws_instance.patching_target[*].public_ip
}

output "instance_ids" {
  description = "List of EC2 instance IDs"
  value       = aws_instance.patching_target[*].id
}

