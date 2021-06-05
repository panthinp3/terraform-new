resource "aws_subnet" "subnet_main" {
    vpc_id = aws_vpc.main_vpc.id
    cidr_block= "12.34.7.0/24"
    availability_zone= "us-east-1a"
    tags = {
        Name= "Subnet for ec2-01"
    }
}