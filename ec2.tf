#ec2.tf
#securitygroup
resource "aws_security_group" "web_server" {
  name        = "web-server-sg"
  description = "Allow SSH and HTTP access from anywhere"
  vpc_id = aws_vpc.main.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}

resource "aws_instance" "example" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name      = "myself"
  subnet_id     = aws_subnet.public.id
  associate_public_ip_address = true
  security_groups = [
    aws_security_group.web_server.id
  ]

  user_data = filebase64("userdata.sh")

  tags = {
    Name = "web-server"
  }
}


#  resource "aws_eip" "ip" {
#    instance = aws_instance.server_terraform.id
#    vpc      = true
#    tags = {
#      Name = "elastic-ip"
#    }
#  }

