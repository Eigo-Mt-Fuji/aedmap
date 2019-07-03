provider "aws" {
  # No credentials explicitly set here because they come from either the
  # environment or the global credentials file.
  region = "ap-northeast-1"
}

terraform {
  required_version = ">= 0.11.14"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "1.66.0"

  name = "vpc-${terraform.workspace}"

  cidr                = "10.20.0.0/16"
  azs                 = ["ap-northeast-1a", "ap-northeast-1c"]
  private_subnets     = ["10.20.1.0/24", "10.20.2.0/24"]
  public_subnets      = ["10.20.11.0/24", "10.20.12.0/24"]

  enable_nat_gateway = true
}

## IAM 

resource "aws_iam_role" "aedmap-role" {
  name = "AedmapServiceRole${terraform.workspace}"
  path = "/"
  assume_role_policy = "${file("templates/assume-role-policy.json")}"
  force_detach_policies = true
}

resource "aws_iam_role_policy_attachment" "aedmap-role-service-policy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkService"
  role       = "${aws_iam_role.aedmap-role.name}"
  depends_on = ["aws_iam_role.aedmap-role"]
}

resource "aws_iam_role_policy_attachment" "aedmap-role-enhanced-health-policy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkEnhancedHealth"
  role       = "${aws_iam_role.aedmap-role.name}"
  depends_on = ["aws_iam_role.aedmap-role"]
}

## RDS (Database)
resource "aws_db_subnet_group" "aedmap-db-subnet" {
    name = "aedmap-subnet-group-${terraform.workspace}"
    description = "subnet group for aedmap postgres database"
    subnet_ids = ["${module.vpc.private_subnets}"]
}
resource "aws_security_group" "aedmap-sg" {
    name = "aedmap-db-sg"
    description = "aedmap postgres database"
    vpc_id = "${module.vpc.vpc_id}"
    ingress {
        from_port = 5432
        to_port =5432
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
resource "aws_db_parameter_group" "aedmap-db-paramter-group" {
    name = "aedmap-db-parameter-group-${terraform.workspace}"
    family = "postgres9.5"
    description = "Parameter group for aedmap-db (postgres 9.5)"

    parameter {
        name = "log_min_duration_statement"
        value = "100"
    }
}

resource "aws_db_instance" "aedmap-db" {
    identifier = "aedmap-db"
    engine = "postgres"
    engine_version = "9.5.2"
    allocated_storage = 20
    instance_class = "${var.db_instance_type}"
    storage_type = "gp2"
    name = "postgres"
    username = "postgres"
    password = "${var.db_password}"
    db_subnet_group_name = "${aws_db_subnet_group.aedmap-db-subnet.name}"
    vpc_security_group_ids = ["${aws_security_group.aedmap-sg.id}"]
    parameter_group_name = "${aws_db_parameter_group.aedmap-db-paramter-group.name}"
    backup_retention_period = "2"
    backup_window = "19:00-19:30"
    apply_immediately = "true"
    auto_minor_version_upgrade = false
    skip_final_snapshot = true # 
    tags = {
      service = "${var.service_name}"
      env ="${terraform.workspace}"
    }
}

## ACM証明書発行リクエスト

resource "aws_acm_certificate" "aedmap-certificate" {
  domain_name       = "${var.aws_acm_sub_domain_name}"
  validation_method = "${var.aws_acm_validation_method}"

  tags {
    service = "${var.service_name}"
    env = "${terraform.workspace}"
  }

  lifecycle {
    # lifecycleにこれを入れておくのが推奨されています
    create_before_destroy = true
  }
}

