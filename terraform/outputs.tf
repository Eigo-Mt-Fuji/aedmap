# VPC
output "vpc_id" {
  description = "The ID of the VPC"
  value       = "${module.vpc.vpc_id}"
}

# Subnets
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = "${module.vpc.private_subnets}"
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = "${module.vpc.public_subnets}"
}

# NAT gateways
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = "${module.vpc.nat_public_ips}"
}

# DATABASE_URL
output "env_database_url" {
  description = "environment variable DATABASE_URL"
  value = "postgresql://${aws_db_instance.aedmap-db.username}:${var.db_password}@${aws_db_instance.aedmap-db.endpoint}/postgres"
}

output "cloudwatch_log_group_name" {
  description = "aws_cloudwatch_log_group name "
  value = "/aws/elasticbeanstalk/aedmap-env-1"
}
