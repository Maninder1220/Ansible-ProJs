# Creating 5 EC2 with Unique Name
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "ec2_group" {
  ami               = data.aws_ami.ubuntu.id
  instance_type     = "t2.micro"

  for_each = var.ec2_instance_names


  tags = {
    "Name" = var.ec2_instance_names[each.key]
}
}

