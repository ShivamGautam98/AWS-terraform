resource "aws_vpc" "vpc-1" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "my-vpc-1"
  }
}

