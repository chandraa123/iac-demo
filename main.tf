provider "aws" {
    region  ="eu-west-2"
    profile = "default"
}

variable "amiid" {
  default ="ami-0d37e07bd4ff37148"
}
resource "aws_instance" "terraformdocec2" {
  ami           = "${var.amiid}"
  instance_type = "t3.micro"
  key_name = "terraform"
 
  tags = {
    Name = "Terraform_jenkins"
  }
}

