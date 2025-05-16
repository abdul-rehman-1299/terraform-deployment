resource "aws_eip" "eip" {
  tags = {
    Name         = "${local.resource_name_prefix}_eip"
    Environment  = var.project_info[0]
    ResourceType = "EIP"
  }
}