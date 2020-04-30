data "aws_availability_zones" "available" {}

resource "aws_vpc" "main" {
  cidr_block           = var.cidr_vpc
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "Main_VPC"
  }
}

resource "aws_subnet" "public1" {
  cidr_block              = var.cidr_public_subnet1
  availability_zone       = data.aws_availability_zones.available.names[0]
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = true
  tags = {
    Name = "Public-SN1"
  }
}

resource "aws_subnet" "public2" {
  cidr_block              = var.cidr_public_subnet2
  availability_zone       = data.aws_availability_zones.available.names[1]
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = true
  tags = {
    Name = "Public-SN2"
  }
}
