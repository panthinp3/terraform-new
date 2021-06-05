resource "aws_security_group" "ports" {
    name = "ports"
    vpc_id = aws_vpc.main_vpc.id
    description = "Allowing ports for HTTP, HTTPS and Jenkins "
    ingress{
        description= "IncomingPort for HTTP"
        from_port= 80
        to_port= 80
        protocol= "tcp"
        cidr_blocks= ["0.0.0.0/0"] #source: anywhere or private id
    }

    ingress{
        description= "IncomingPort for HTTPS"
        from_port= 443
        to_port= 443
        protocol= "tcp"
        cidr_blocks= ["0.0.0.0/0"]
    }

    ingress{
        description= "IncomingPort for jenkins"
        from_port= 8080
        to_port= 8080
        protocol= "tcp"
        cidr_blocks= ["0.0.0.0/0"] 
    }

    egress{
        description= "Outgoing port"
        from_port= 0
        to_port= 0
        protocol= "-1"
        cidr_blocks= ["0.0.0.0/0"]
    }

    tags={
        Name= "HTTP/S and Jenkins Port"
    }

}
