

resource "aws_security_group" "InstanceSecurityGroup" {
  vpc_id      = var.Vpc.VpcId
  name        = "${terraform.workspace}-${var.EnvName}-InstanceSecurityGroup"
  description = "security group that allows all ingress and all egress traffic"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${terraform.workspace}-${var.EnvName}-InstanceSecurityGroup"
  }
}