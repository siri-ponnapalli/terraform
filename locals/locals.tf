locals {
  domain_name = "mydevops.online"
  zone_id = "Z0002129F7JN5W0O266T"
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
    # count.index will not work in locals
  #count.index will not work in locals
}  
