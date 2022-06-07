variable "region" {
  description = "Select the region, when you want will creat the instance"
  default     = "us-east-1"
}

#Instance creation
variable "name-instance" {
  description = "Write name you want"
  default     = "my-instance"
}

variable "ami-ubuntu" {
  description = "If your instance is Ubuntu"
  default     = "ami-0022f774911c1d690"
}

variable "ami-debian" {
  description = "If your instance is Debian"
  default     = "ami-07d02ee1eeb0c996c"
}

variable "ami-windows_server" {
  description = "If your instance is Windows Server"
  default     = "ami-033594f8862b03bb2"
}

variable "instance_type" {
  description = "Select the instance type of the instance (Example: 't2.micro')"
  default     = "t2.micro"
}



#VPC Creation
variable "vpc-name" {
  description = "Name the vpc for easy identification"
  default     = "vpc-test"
}

variable "cidr-block-a" {
  description = "Network class A"
  default     = "10.0.0.0/16"
}

variable "cidr-block-b" {
  description = "Network class B"
  default     = "172.16.0.0/16"
}

variable "cidr-block-subnet-a" {
  description = "Choose your network extension according to your class of IP"
  default     = "10.0.1.0/24"
}

variable "cidr-block-subnet-class-b" {
  description = "Choose your network extension according to your class of IP"
  default     = "172.16.1.0/24"
}

variable "subnet-name" {
  description = "Especify the name subnet"
  default     = "my-subnet"
}

variable "az" {
  description = "Select the availability zone where your subnet will stay"
  default     = "us-east-1a"
}

variable "private_ips" {
  description = "Define your private IP"
  default     = ["10.0.1.10"]
}

variable "igw-name" {
  description = "Name the igw for easy identification"
  default     = "igw-test"
}

variable "name-rt-table" {
  description = "Name of route table"
  default     = "route-table-test"
}

variable "route-name" {
  description = "Name of route"
  default     = "test-route"
}


