resource "aws_key_pair" "this" {
  key_name   = "projeto3-key"
  public_key = file("${path.module}/../../../projeto3-key.pub")
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = aws_key_pair.this.key_name

  associate_public_ip_address = true

  # Removido user_data para que o Ansible gerencie o provisionamento de software

  tags = {
    Name = "web-server-project3"
  }
}