## Author : ARUNKUMAAR R
## Description : Creating Backend Services in AWS
## Date : 15/02/24
## Language : HCL



resource "aws_db_subnet_group" "db-sub" {
  name       = "db-sub"
  subnet_ids = [module.vpc.private_subnets[0], module.vpc.private_subnets[1]]
  tags = {
    Name = "db-sub"
  }
}

resource "aws_db_instance" "backend-db" {
  db_subnet_group_name   = aws_db_subnet_group.db-sub.name
  engine                 = "mysql"
  engine_version         = "5.6.34"
  parameter_group_name   = "default.mysql5.6"
  db_name                = var.DB-NAME
  username               = var.DB-USER
  password               = var.DB-PASS
  instance_class         = "db.t2.micro"
  allocated_storage      = 20
  storage_type           = "gp2"
  skip_final_snapshot    = true
  multi_az               = false
  publicly_accessible    = false
  vpc_security_group_ids = [aws_security_group.backend-sg.id]
  tags = {
    Name = "backend-db"
  }
}

resource "aws_elasticache_subnet_group" "cache-sub" {
  name       = "cache-sub"
  subnet_ids = [module.vpc.private_subnets[0], module.vpc.private_subnets[1]]
  tags = {
    Name = "cache-sub"
  }
}

resource "aws_mq_broker" "backend-mq-broker" {
  broker_name         = "backend-mq-broker"
  engine_type         = "ActiveMQ"
  engine_version      = "5.15.0"
  security_groups     = [aws_security_group.backend-sg.id]
  host_instance_type  = "mq.t2.micro"
  publicly_accessible = false
  subnet_ids          = [module.vpc.private_subnets[0]]

  user {
    username = var.RM-USER
    password = var.RM-PASS
  }
}

resource "aws_elasticache_cluster" "backend-cache" {
  cluster_id           = "backend-cache"
  engine               = "memcached"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  port                 = 11211
  parameter_group_name = "default.memcached1.5"
  subnet_group_name    = aws_elasticache_subnet_group.cache-sub.name
  security_group_ids   = [aws_security_group.backend-sg.id]

}

