output "vpc_id" {
    description = "this is the main vpc id"
    value = aws_vpc.my_vpc.id
}