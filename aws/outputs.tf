output "aws_region" {
  description = "AWS region"
  value       = data.aws_region.current.name
}

output "aws_az_list" {
  description = "AWS Availability Zones"
  value       = data.aws_availability_zones.available.names
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}