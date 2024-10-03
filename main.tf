resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr

  tags = merge(
    { "CNAME" = var.vpc_name },
    var.tags
  )
}

# Aquí irían más recursos como subnets, route tables, etc.