output "ip" {
  value = aws_instance.terraform.public_ip
}

output "name" {
  value = aws_instance.terraform.tags_all
}