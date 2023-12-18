provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "c2_instance" {
  count         = length(var.names)
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids  = [var.existing_sg_id]
  tags = {
    Name = var.names[count.index]
  }

}
