resource "aws_security_group" "AlloLegacyStackALBSecurityGroup" {
  description = "prod-AlloLegacyStackALBSG"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name = "prod-AlloLegacyStackALBSecurityGroup"

  tags = {
    Name  = "prod-AlloLegacyStack-alb-security-group"
    Group = "AlloLegacyStack"
  }

  tags_all = {
    Name  = "prod-AlloLegacyStack-alb-security-group"
    Group = "AlloLegacyStack"
  }

  vpc_id = aws_vpc.AlloLegacyStackVPC.id
}

resource "aws_security_group" "AlloLegacyStackPostgresSecurityGroup" {
  description = "Created by RDS management console"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = [
      aws_subnet.AlloLegacyStackPublicSubnet1.cidr_block,
      aws_subnet.AlloLegacyStackPublicSubnet2.cidr_block
    ]
    from_port = "5432"
    protocol  = "tcp"
    self      = "false"
    to_port   = "5432"
  }

  name = "prod-AlloLegacyStackPostgresSecurityGroup"

  tags = {
    Name  = "prod-AlloLegacyStack-postgres-security-group"
    Group = "AlloLegacyStack"
  }

  tags_all = {
    Name  = "prod-AlloLegacyStack-postgres-security-group"
    Group = "AlloLegacyStack"
  }

  vpc_id = aws_vpc.AlloLegacyStackVPC.id
}

resource "aws_security_group" "AlloLegacyStackECSTaskSecurityGroup" {
  description = "prod-AlloLegacyStackECSTaskSecurityGroup"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8000"
  }

  name = "prod-AlloLegacyStackECSTaskSecurityGroup"

  tags = {
    Name  = "prod-AlloLegacyStack-ecs-task-security-group"
    Group = "AlloLegacyStack"
  }

  tags_all = {
    Name  = "prod-AlloLegacyStack-ecs-task-security-group"
    Group = "AlloLegacyStack"
  }

  vpc_id = aws_vpc.AlloLegacyStackVPC.id
}
