resource "aws_vpc" "main"{
   cidr_block = var.vpc_cidr
   tags={
      name= "main"
   }
}

resource "aws_subnet" "main"{
   vpc_id= aws_vpc.main.id
   cidr_block= var.subnet_cidr
   tags={
      name="main"
   }
}
output "vpc_id"{
   value=aws_vpc.main.id
}
output "subnet_id"{
   value=aws_subnet.main.id
}