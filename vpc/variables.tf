variable "vpc_cidr_block" {
  type = string
}
variable "public_subnets" {}
variable "private_subnets" {}
variable "public_route_table_cidr_block" {
  type    = string
  default = "0.0.0.0/0"
}
variable "private_route_table_cidr_block" {
  type    = string
  default = "0.0.0.0/0"
}
variable "project_info" {
  type = list(string)
}
variable "cluster_name" {
  type = string
}