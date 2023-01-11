resource "aws_vpc" "my_vpc" {
	ami = var.ami
	instance_type = var.instance_type
        key_name = var.key_name
	tags = {
		Name = var.instance_name	
	}
}