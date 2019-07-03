
variable "service_name" {
  type = "string"
  default = "aedmap"
}

variable "db_instance_type" {
  
  type = "string"
  default = "db.t2.micro"
}

variable "db_password" {
  type = "string"
  default = "postgres"
}

variable "aws_acm_sub_domain_name" {
  description = "Sub Domain Name"
  default = "aedmap.fujikawa.dev"
}
variable "aws_acm_validation_method" {
  description = "validation method"
  default = "DNS"
}
