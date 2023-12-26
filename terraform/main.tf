
resource "aws_vpc" "my_vpc" {
  
  cidr_block = var.vpc_cidr

  tags = local.tags
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = local.tags
}

resource "aws_instance" "krishna" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.my_subnet.id
  volume_tags = local.tags
  tags = local.tags
}

