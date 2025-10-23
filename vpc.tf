#AWS VPC
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = merge(
    var.vpc_tags,
    local.common_tags,
    {
        Name = local.common_name_sufix
    }
  )
}

#Internet Gateway
resource "aws_internet_gateway" "Gateway" {
  vpc_id = aws_vpc.main.id

 tags = merge(
    var.igw_tags,
    local.common_tags,
    {
        Name = local.common_name_sufix
    }
  )
}

#Subnet Public
resource "aws_subnet" "public" {
    count = length(var.public_subnet_cidr)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr[count.index]
  availability_zone = local.az_names[count.index]

 tags = merge(
    var.public_subnet_tags,
    local.common_tags,
    {
        Name = "${local.common_name_sufix}-public-${local.az_names[count.index]}"
    }
  )
}