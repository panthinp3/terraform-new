#creating aws instance
resource "aws_instance" "ec2-01" {
    ami= "ami-0d5eff06f840b45e9"
    availability_zone = "us-east-1a"
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.ports.id]
    subnet_id = aws_subnet.subnet_main.id
    tags ={
        Name= "Dev"
        }
    }


variable "instance_type" {
  type= string
  default = "t2.micro"
}
