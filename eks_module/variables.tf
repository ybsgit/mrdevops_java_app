
variable "access_key" {
    default = ""
}
variable "secret_key" {
    default = ""
}


variable "region" {
    default = "us-east-1"
}

variable "aws_eks_cluster_config" {
  
}
variable "eks_node_group_config" {
  
}

variable "subnets" {
  type = list 
  default = ["subnet-01dee77f947854149","subnet-09ab4ab618e610d58","subnet-0ad2b5e6f1c8528ac","subnet-08d1306dda5a5c197","subnet-0df25b6a0731e2681","subnet-09d0b3011f6104448"]
}





















