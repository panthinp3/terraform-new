resource "aws_vpc" "main_vpc" {
  cidr_block= "12.34.0.0/16"
  tags={
      Name="Custom VPC"
  }

}