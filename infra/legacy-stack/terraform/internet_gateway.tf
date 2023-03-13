resource "aws_internet_gateway" "AlloLegacyStackIGW" {
  tags = {
    Name  = "prod-AlloLegacyStackProgect-igw"
    Group = "AlloLegacyStack"
  }

  tags_all = {
    Name  = "prod-AlloLegacyStackProgect-igw"
    Group = "AlloLegacyStack"
  }

  vpc_id = aws_vpc.AlloLegacyStackVPC.id
}
