resource "aws_route53_record" "expense" {
  count                  = length(var.instance_names)
  zone_id = var.hostzone_id
  name    = var.instance_names[count.index]
  type    = "A"
  ttl     = 300
  records = [aws_instance.expense_instances[count.index].private_ip]
}