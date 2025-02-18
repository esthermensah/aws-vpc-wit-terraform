#1 Create a VPC 
resource "aws_vpc" "emensah_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "emensah_vpc"
    }
}

#2 Create a  public subnet
resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.emensah_vpc.id
    cidr_block = "10.0.1.0/24"
  
}

#3 Create a private subnet
resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.emensah_vpc.id
    cidr_block = "10.0.2.0/24"
  
}

#4 Create an internet gateway
resource "aws_internet_gateway" "emensah_igw" {
    vpc_id = aws_vpc.emensah_vpc.id
    tags = {
        Name = "emensah_igw"
    }
  
}

#5 create a route table for the public subnet
resource "aws_route_table" "emensah_public_route" {
    vpc_id = aws_vpc.emensah_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.emensah_igw.id
        
    }
  
}

#6 Route table association with public subnet
resource "aws_route_table_association" "emensah_RT_association" {
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.emensah_public_route.id

  
}






