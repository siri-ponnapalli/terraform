resource "aws_instance" "terraform" {
      

    ami = "ami-09c813fb71547fc4f"
    instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
    vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
    tags = {
        Name = "terraform"
    }
           
 }


resource "aws_security_group" "allow_ssh_terraform" { 
  
     name        = "allow_sshh"
  description = "allow port number 22 for ssh access"


  # usually we allow everything in egress
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]

  }
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp" #allow from everyone
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]

  }
 

}











    