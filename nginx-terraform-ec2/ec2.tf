# -------------------------------
# EC2 Instance
# -------------------------------
resource "aws_instance" "nginxserver" {
  ami                         = "ami-0341d95f75f311023"# Amazon Linux 2
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.nginx_sg.id]
  associate_public_ip_address = true
  key_name                    = "nginx-key"

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install nginx -y
              systemctl enable nginx
              systemctl start nginx
              EOF

  tags = {
    Name = "Nginxserver"
  }
}