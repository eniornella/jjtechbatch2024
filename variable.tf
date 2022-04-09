
variable "ami" {
  type = map
  default = {
    rhel = "ami-00ee4df451840fa9d",
    linux  = "ami-0eb324d928acca58a",
    windows = "ami-000b6e3a1a8493a2f"
  # default = var.ami_id
      }
}
variable "instance_types" {
  type = list
  default = ["t2.micro","t2.small","t2.nano"]
  # default = var.instance_typeb
}

# variable "region" {

# }
# variable "profile" {

# }
