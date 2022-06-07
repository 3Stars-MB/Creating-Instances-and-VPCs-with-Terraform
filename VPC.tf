resource "aws_vpc" "my-vpc" {
  cidr_block           = var.cidr-block-a
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc-name
  }
}

resource "aws_subnet" "my-subnet" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = var.cidr-block-subnet-a

  tags = {
    Name = var.subnet-name
  }
}

resource "aws_internet_gateway" "my-igw" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = var.igw-name
  }
}

resource "aws_route_table" "my-route-table" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-igw.id
  }

  tags = {
    Name = var.name-rt-table
  }
}

resource "aws_route" "routetointernet" {
  route_table_id         = aws_route_table.my-route-table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.my-igw.id
}

resource "aws_network_interface" "eni" {
  subnet_id   = aws_subnet.my-subnet.id
  private_ips = var.private_ips

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_route_table_association" "pub_subnet_association" {
  subnet_id      = aws_subnet.my-subnet.id
  route_table_id = aws_route_table.my-route-table.id
}

