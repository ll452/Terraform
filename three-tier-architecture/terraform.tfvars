# Generic variables
region = "us-east-1"

# VPC VARIABLES
vpc_name             = "tf-tta-vpc"
vpc_cidr             = "10.0.0.0/16"
vpc_azs              = ["us-east-1a", "us-east-1b"]
vpc_public_subnets   = ["10.0.10.0/24", "10.0.11.0/24"]
vpc_private_subnets  = ["10.0.20.0/24", "10.0.21.0/24"]
vpc_database_subnets = ["10.0.30.0/24", "10.0.31.0/24"]
vpc_tags             = { "created-by" = "terraform" }

# ASG VARIABLES
asg_sg_name                             = "tf-tta-asg-sg"
asg_sg_description                      = "tf-tta-asg-sg"
asg_sg_tags                             = { "Name" = "tf-tta-asg-sg", "created-by" = "terraform" }
asg_name                                = "tf-tta-asg"
asg_min_size                            = 0
asg_max_size                            = 2
asg_desired_capacity                    = 2
asg_wait_for_capacity_timeout           = 0
asg_health_check_type                   = "EC2"
asg_launch_template_name                = "tf-tta-asg-lt"
asg_launch_template_description         = "tf-tta-asg-lt"
asg_update_default_version              = true
asg_image_id                            = "ami-026b57f3c383c2eec"
asg_instance_type                       = "t3.micro"
asg_ebs_optimized                       = true
asg_enable_monitoring                   = true
asg_create_iam_instance_profile         = true
asg_iam_role_name                       = "tf-tta-asg-iam-role"
asg_iam_role_path                       = "/ec2/"
asg_iam_role_description                = "tf-tta-asg-iam-role"
asg_iam_role_tags                       = { "Name" = "tf-tta-asg-iam-role", "created-by" = "terraform" }
asg_block_device_mappings_volume_size_0 = 20
asg_block_device_mappings_volume_size_1 = 30
asg_instance_tags                       = { "Name" = "tf-tta-asg-instance", "created-by" = "terraform" }
asg_volume_tags                         = { "Name" = "tf-tta-asg-volume", "created-by" = "terraform" }
asg_tags                                = { "Name" = "tf-tta-asg", "created-by" = "terraform" }

# ALB VARIABLES
alb_sg_name                    = "tf-tta-alb-sg"
alb_sg_ingress_cidr_blocks     = ["0.0.0.0/0"]
alb_sg_description             = "tf-tta-alb-sg"
alb_sg_tags                    = { "Name" = "tf-tta-alb-sg", "created-by" = "terraform" }
alb_name                       = "tf-tta-alb"
alb_http_tcp_listeners_port    = 80
alb_target_group_name          = "tf-tta-alb-tg"
alb_target_groups_backend_port = 80
alb_tags                       = { "Name" = "tf-tta-alb", "created-by" = "terraform" }

# RDS VARIABLES
rds_sg_name                               = "tf-tta-rds-sg"
rds_sg_description                        = "tf-tta-rds-sg"
rds_sg_tags                               = { "Name" = "tf-tta-rds-sg", "created-by" = "terraform" }
rds_identifier                            = "tf-tta-rds"
rds_mysql_engine                          = "mysql"
rds_engine_version                        = "8.0.27"
rds_family                                = "mysql8.0" # DB parameter group
rds_major_engine_version                  = "8.0"      # DB option group
rds_instance_class                        = "db.t2.small"
rds_allocated_storage                     = 20
rds_max_allocated_storage                 = 100
rds_db_name                               = "tf_tta_mysql"
rds_username                              = "tf_tta_user"
rds_port                                  = 3306
rds_multi_az                              = false
rds_maintenance_window                    = "Mon:00:00-Mon:03:00"
rds_backup_window                         = "03:00-06:00"
rds_enabled_cloudwatch_logs_exports       = ["general"]
rds_create_cloudwatch_log_group           = true
rds_backup_retention_period               = 0
rds_skip_final_snapshot                   = true
rds_deletion_protection                   = false
rds_performance_insights_enabled          = false
rds_performance_insights_retention_period = 7
rds_create_monitoring_role                = true
rds_monitoring_interval                   = 60
rds_tags                                  = { "Name" = "tf-tta-rds", "created-by" = "terraform" }
rds_db_instance_tags                      = { "Name" = "tf-tta-rds-instance", "created-by" = "terraform" }
rds_db_option_group_tags                  = { "Name" = "tf-tta-rds-option-group", "created-by" = "terraform" }
rds_db_parameter_group_tags               = { "Name" = "tf-tta-rds-db-parameter-group", "created-by" = "terraform" }
rds_db_subnet_group_tags                  = { "Name" = "tf-tta-rds-db-subnet-group", "created-by" = "terraform" }
