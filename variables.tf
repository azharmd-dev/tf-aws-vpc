variable "vpc_cidr" {
    type =   string
    description = "Please provide VPC CIDR"
}

variable "project_name" {
      type = string
}

variable "environment" {
      type = string
}

variable "vpc_tags" {
    type = map 
    default = {}  
}

variable "igw_tags" {
  type = map 
  default = {}
}

variable "public_subnet_cidr" {
    type =  list  
}

variable "public_subnet_tags" {
    type = map 
    default = {}
  
}

variable "private_subnet_cidr" {
    type =  list  
}

variable "private_subnet_tags" {
    type = map 
    default = {}
}

variable "database_subnet_cidr" {
    type =  list  
}

variable "database_subnet_tags" {
    type = map 
    default = {}
}

variable "public_route_table_tags" {
    type = map 
    default = {}
}

variable "private_route_table_tags" {
    type = map 
    default = {}
}

variable "database_route_table_tags" {
    type = map 
    default = {}
}

variable "eip_tags" {
    type = map 
    default = {}
}

variable "nat_gw_tags" {
    type = map 
    default = {}
}