# Get AWS Account details
data "aws_caller_identity" "current" {}

# Peer the VPCs
resource "aws_vpc_peering_connection" "peering" {
  vpc_id      = var.vpc_id_1
  peer_vpc_id = var.vpc_id_2
  peer_region = var.region

  tags = {
    Name    = "${var.project_name}-peering"
    Project = "${var.project_name}-${var.project_suffix}"
  }
}

# Peering Connection Route
resource "aws_route" "vpc_id_1_route" {
  count                     = length(var.vpc_id_1_rt_ids)
  route_table_id            = element(var.vpc_id_1_rt_ids, count.index)
  destination_cidr_block    = var.vpc_cidr_2
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id
  depends_on                = [aws_vpc_peering_connection.peering]
}

# Peering Connection Route
resource "aws_route" "vpc_id_2_route" {
  count                     = length(var.vpc_id_2_rt_ids)
  route_table_id            = element(var.vpc_id_2_rt_ids, count.index)
  destination_cidr_block    = var.vpc_cidr_1
  vpc_peering_connection_id = aws_vpc_peering_connection.peering.id
  depends_on                = [aws_vpc_peering_connection.peering]
}

# Allow cross EKS access
resource "aws_security_group_rule" "ingress_rule_vpc_1" {
  description              = "Whitelist EKS Clusters"
  protocol                 = "all"
  security_group_id        = var.vpc_1_sg_id
  source_security_group_id = var.vpc_2_sg_id
  from_port                = 0
  to_port                  = 65535
  type                     = "ingress"
  depends_on               = [aws_vpc_peering_connection.peering]
}

# Allow cross EKS access
resource "aws_security_group_rule" "ingress_rule_vpc_2" {
  description              = "Whitelist EKS Clusters"
  protocol                 = "all"
  security_group_id        = var.vpc_2_sg_id
  source_security_group_id = var.vpc_1_sg_id
  from_port                = 0
  to_port                  = 65535
  type                     = "ingress"
  depends_on               = [aws_vpc_peering_connection.peering]
}