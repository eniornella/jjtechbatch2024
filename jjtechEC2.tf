provider "aws" {
  region     = "us-west-2"
  access_key = "AKIARZLWNF4ZUB5PJKBR"
  secret_key = "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"
}
resource "aws_instance" "jjtechweb" {
  ami = "ami-00ee4df451840fa9d"
  instance_type = "t2.micro"

}


