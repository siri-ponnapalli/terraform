resource "aws_route53_record" "expense" {
  count   = length(var.instance_names)
  zone_id = local.zone_id
  name    = var.instance_names[count.index] == "frontend" ? local.domain_name : "${var.instance_names[count.index]}.${local.domain_name}"
  type    = "A"
  ttl     = 300
  records = var.instance_names[count.index] == "frontend" ? [aws_instance.expense_instances[count.index].public_ip] : [aws_instance.expense_instances[count.index].private_ip]
  allow_overwrite = true
}