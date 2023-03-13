resource "aws_route_table" "AlloLegacyStackPublicRouteTable" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.AlloLegacyStackIGW.id
  }

  tags = {
    Name  = "prod-AlloLegacyStackProgect-rtb-public"
    Group = "AlloLegacyStack"
  }

  tags_all = {
    Name  = "prod-AlloLegacyStackProgect-rtb-public"
    Group = "AlloLegacyStack"
  }

  vpc_id = aws_vpc.AlloLegacyStackVPC.id
}

resource "aws_route_table" "AlloLegacyStackPrivateRouteTable" {
  tags = {
    Name  = "prod-AlloLegacyStackProgect-rtb-private"
    Group = "AlloLegacyStack"
  }

  tags_all = {
    Name  = "prod-AlloLegacyStackProgect-rtb-private"
    Group = "AlloLegacyStack"
  }

  vpc_id = aws_vpc.AlloLegacyStackVPC.id
}
