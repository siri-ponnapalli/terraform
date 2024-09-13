output "instance_info" {
  value = aws_instance.expense_instances[*].private_ip
}