provider "aws" {
  region = var.aws_region
}
resource "aws_instance" "test" { 
    ami = "ami-04cedf5afbdca0e15"
    instance_type = "t2.micro"
    key_name = "cloud-poc"
    
    tags = {
    Name = "ami-test"
    }

}
output "publicip" {
  value = aws_instance.test.public_ip
}
