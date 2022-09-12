

variable "PulicKey" {
  default = "vprofileKey-pub"
}

variable "PrivateKey" {
  default = "vprofileKey"

}
variable "AWS_REGION" {
  default = "aws-east-1"

}
variable "AMIS" {
  type = map(any) #?
  default = {
    us-east-1 = "ami-052efd3df9dad4825"
    # give amis for other regions
    # us-east-2= "xxxxxxxxx"
    # us-east-3= "xxxxxxx"

  }
}

variable "VPC_NAME" {
  default = "sprofile-VPC "

}
variable "VpcCIDR" {
  default = "172.31.0.0/16"

}
############################publicsubnet
variable "PubSub1CIDR" {
  default = "172.31.1.0/24"

}

variable "PubSub2CIDR" {
  default = "172.31.2.0/24"

}
variable "PubSub3CIDR" {
  default = "172.31.3.0/24"


}
####################################################private subnet


variable "PrivSub1CIDR" {
  default = "172.31.4.0/24"

}

variable "PrivSub2CIDR" {
  default = "172.31.5.0/24"

}
variable "PrivSub3CIDR" {
  default = "172.31.6.0/24"

}

############################################################## AZones1,2,3
variable "zone1" {
  default = "us-east-1a"

}

variable "zone2" {
  default = "us-east-1b"

}

variable "zone3" {
  default = "us-east-1c"

}
output "kk" {
  value = var.PrivateKey

}
