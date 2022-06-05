resource "aws_instance" "web" {
  ami           = "ami-0c6120f461d6b39e9"
  instance_type = "t2.micro"

  tags = local.common_tags
}

locals {
  common_tags = {
     Name = "terraform_test"
     Owner = "self"
  }
}
