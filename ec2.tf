resource "aws_instance" "my-instance" {
  ami           = var.ami-ubuntu
  instance_type = var.instance_type

  network_interface {
    network_interface_id = aws_network_interface.eni.id
    device_index         = 0
  }
  tags = {
    Name = var.name-instance
  }
}


