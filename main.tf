/*
* TERRAFORM AWS VPC
*
* documentation terraform for VPC AWS
*
*/

resource "aws_vpc" "vpc_module" {
  cidr_block = var.cidr_block_input
}

resource "aws_subnet" "subnet_modulevpc" {
  for_each = var.subnets_data_input

  vpc_id            = aws_vpc.vpc_module.id
  cidr_block        = each.value["cidr_block_x"]
  availability_zone = each.value["availability_zone_test"]
  //availability_zone = data.aws_availability_zones.availability_zones.names[0]
}
