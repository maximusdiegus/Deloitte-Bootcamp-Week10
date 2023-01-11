resource "aws_vpc" "public_subnet" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "${var.environment}-${var.region}-Public-Subnet"
  }
}

resource "aws_vpc" "private_subnet" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "${var.environment}-${var.region}-Private-Subnet"
  }
}