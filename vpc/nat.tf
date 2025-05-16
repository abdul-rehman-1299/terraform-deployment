resource "aws_nat_gateway" "nat" {

  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public-subnet[keys(var.public_subnets)[0]].id

  tags = {
    Name         = "${local.resource_name_prefix}_nat_gateway"
    Environment  = var.project_info[0]
    ResourceType = "NATGW"
  }

}
