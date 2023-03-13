resource "aws_route_table_association" "AlloLegacyStackPublicSubnet1" {
  route_table_id = aws_route_table.AlloLegacyStackPublicRouteTable.id
  subnet_id      = aws_subnet.AlloLegacyStackPublicSubnet1.id
}

resource "aws_route_table_association" "AlloLegacyStackPublicSubnet2" {
  route_table_id = aws_route_table.AlloLegacyStackPublicRouteTable.id
  subnet_id      = aws_subnet.AlloLegacyStackPublicSubnet2.id
}

resource "aws_route_table_association" "AlloLegacyStackPrivateSubnet1" {
  route_table_id = aws_route_table.AlloLegacyStackPrivateRouteTable.id
  subnet_id      = aws_subnet.AlloLegacyStackPrivateSubnet1.id
}

resource "aws_route_table_association" "AlloLegacyStackPrivateSubnet2" {
  route_table_id = aws_route_table.AlloLegacyStackPrivateRouteTable.id
  subnet_id      = aws_subnet.AlloLegacyStackPrivateSubnet2.id
}
