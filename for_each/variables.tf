variable "instances"{
   type        = map
   default     = {
    mysql = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
   } 
}

variable "domain_name" {
  default = "mydevops.online"
}

variable "hostzone_id" {
  default = "Z0002129F7JN5W0O266T"
}