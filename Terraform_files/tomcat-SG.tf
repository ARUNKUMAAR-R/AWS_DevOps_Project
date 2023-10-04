resource "aws_security_group" "tomcat-sg" {
  name        = "tomcat-sg"
  description = "Security group for tomcat instances"
  vpc_id      = module.vpc.vpc_id
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port       = 22
    protocol        = "tcp"
    to_port         = 22
    security_groups = [aws_security_group.bastion-sg.id]
  }
  ingress {
    from_port       = 80
    protocol        = "tcp"
    to_port         = 80
    security_groups = ["0.0.0.0/0"]
  }
  ingress {
    from_port       = 8080
    protocol        = "tcp"
    to_port         = 8080
    security_groups = ["0.0.0.0/0"]
  }
}
