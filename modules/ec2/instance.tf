resource "aws_instance" "web"{
    count=var.ec2_count
    ami= var.ami_id
    instance_type=var.instance_type
    vpc_security_group_ids=var.sid
    subnet_id= var.subnet_id
    tags={
        name="Helloworld"
    }
}