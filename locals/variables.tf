variable "instance_names" {
  type        = list(string)
  default     = ["msql", "backend", "frontend"]
  description = "description"
}

#variable "domain_name" {
#default = "mydevops.online"
#}

#variable "hostzone_id" {
# default = "Z0002129F7JN5W0O266T"
#}