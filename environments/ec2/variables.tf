#This is a variable for the cidr block
variable "cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "my_cidr_block"
}
#This is the variable for the Name tag
variable "name" {
  type    = string
  default = "mytestinstance"
}
#This is teh variable for the ec2 Instance
variable "instant" {
  type = map(any)
  default = {
    dev     = "t2.micro"
    staging = "t2.large"
    prod    = "t3.micro"
  }
}
#This is the variable for the elatic IP resourse
variable "Elasticname" {
  type    = string
  default = "Myelastic"
}
# This is the count variable. It gives the list from which terraform will be picking and creating.
variable "Instance_count" {
  type    = list(string)
  default = ["dev", "stage", "prod"]
}

variable "region" {
  type    = string
  default = "us-west-2"
}