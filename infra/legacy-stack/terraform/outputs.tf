# account id
output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

# network
# vpc
output "aws_vpc_AlloLegacyStackVPC_id" {
  value = aws_vpc.AlloLegacyStackVPC.id
}

# subnet
output "aws_subnet_AlloLegacyStackPublicSubnet1_id" {
  value = aws_subnet.AlloLegacyStackPublicSubnet1.id
}

output "aws_subnet_AlloLegacyStackPrivateSubnet2_id" {
  value = aws_subnet.AlloLegacyStackPrivateSubnet2.id
}

output "aws_subnet_AlloLegacyStackPrivateSubnet1_id" {
  value = aws_subnet.AlloLegacyStackPrivateSubnet1.id
}

output "aws_subnet_AlloLegacyStackPublicSubnet2_id" {
  value = aws_subnet.AlloLegacyStackPublicSubnet2.id
}

output "aws_subnet_AlloLegacyStackPublicSubnet1_availability_zone" {
  value = aws_subnet.AlloLegacyStackPublicSubnet1.availability_zone
}

output "aws_subnet_AlloLegacyStackPrivateSubnet2_availability_zone" {
  value = aws_subnet.AlloLegacyStackPrivateSubnet2.availability_zone
}

output "aws_subnet_AlloLegacyStackPrivateSubnet1_availability_zone" {
  value = aws_subnet.AlloLegacyStackPrivateSubnet1.availability_zone
}

output "aws_subnet_AlloLegacyStackPublicSubnet2_availability_zone" {
  value = aws_subnet.AlloLegacyStackPublicSubnet2.availability_zone
}

# igw
output "aws_internet_gateway_AlloLegacyStackIGW_id" {
  value = aws_internet_gateway.AlloLegacyStackIGW.id
}

# route_table
output "aws_route_table_AlloLegacyStackPublicRouteTable_id" {
  value = aws_route_table.AlloLegacyStackPublicRouteTable.id
}

output "aws_route_table_AlloLegacyStackPrivateRouteTable_id" {
  value = aws_route_table.AlloLegacyStackPrivateRouteTable.id
}

output "aws_route_table_association_AlloLegacyStackPublicSubnet1_id" {
  value = aws_route_table_association.AlloLegacyStackPublicSubnet1.id
}

output "aws_route_table_association_AlloLegacyStackPublicSubnet2_id" {
  value = aws_route_table_association.AlloLegacyStackPublicSubnet2.id
}

output "aws_route_table_association_AlloLegacyStackPrivateSubnet1_id" {
  value = aws_route_table_association.AlloLegacyStackPrivateSubnet1.id
}

# sg
output "aws_route_table_association_AlloLegacyStackPrivateSubnet2_id" {
  value = aws_route_table_association.AlloLegacyStackPrivateSubnet2.id
}
