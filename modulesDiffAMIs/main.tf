provider "aws" {
    region = "eu-west-2"
    alias  = "aws-uk"
}

variable "ami-uk" {
    description = "machine image uk"
    default     = "ami-f976839e"
}

variable "type" {
    default = "t2.micro"
}

variable "zone" {
    description = "map of availability zones for eu-west-2"
    default     = {
        1 = {az = "eu-west-2a", ami = "ami-084e8c05825742534"}
        2 = {az = "eu-west-2b", ami = "ami-03542b5588cd0e6b3"}
    }
}

resource "aws_instance" "example" {
    provider = "aws.aws-uk"
    for_each = var.zone
    availability_zone = each.value
    ami           = var.ami-uk
    instance_type = var.type

    lifecycle {
        prevent_destroy = true
    }

    timeouts {
        create = "5m"
        delete = "2h"
    }
}