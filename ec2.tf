resource "aws_instance" "web" {
  ami           = "ami-07620139298af599e"
  instance_type = "t2.micro"

  tags = local.common_tags
}

locals {
  common_tags = {
     Name = "terraform_test"
     Owner = "self"
  }
}
