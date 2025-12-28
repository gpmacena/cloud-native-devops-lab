resource "aws_key_pair" "this" {
  key_name   = var.key_name
  public_key = var.public_key  
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = aws_key_pair.this.key_name

  associate_public_ip_address = true

  tags = {
    Name = "web-server-project3"
    Project = "cloud-native-devops-lab"
    Env     = "dev"
  }
}

