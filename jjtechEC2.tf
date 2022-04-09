/*
provider "aws" {
  region     = "us-west-2"
  # access_key = "AKIARZLWNF4ZUB5PJKBR"
  # secret_key = "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"
}
locals {
  common_tags = {
        Name ="jjtech"
        App_Name = "Ovid"
        Cost_Center = "xyz222"
        Business-Unit = "GBS"
        Project = "GBS"
        App_role ="web server"
        Customer ="student"
        Environment ="dev"
        Confidentiality = "Restricted"
        Owner ="jespo_mbwoge@jjtechinc.co"
        Opt_in_out = "yes"
        Application_ID = "197702"
        Compliance = "pci"
      }
}


resource "aws_instance" "jjtechweb" {
  ami = var. ami["rhel"]
  instance_type = var.instance_types[0]

    tags = local.common_tags

}
resource "aws_instance" "newweb1" {
  ami = var.ami["linux"]
  instance_type = var.instance_types[1]

    tags = local.common_tags

}
resource "aws_instance" "newweb2" {
  ami = var.ami["windows"]
  instance_type = var.instance_types[2]

    tags = local.common_tags

}
resource "aws_ebs_volume" "newwebebs1" {
  availability_zone = "us-west-2a"
  size              = 40

  tags = local.common_tags

}
output "jjtechEC2" {
  value = aws_instance.jjtechweb.public_ip
}
resource "aws_eip" "jjtecheip" {
vpc = true

}
output "jjtech_eip" {
  value = aws_eip.jjtecheip.id
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.jjtechweb.id
  allocation_id = aws_eip.jjtecheip.id
}
*/
