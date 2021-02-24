resource "aws_security_group" "main" {
  vpc_id=var.vpc_id
  ingress  {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
output "sid"{
    value=[aws_security_group.main.id]
}