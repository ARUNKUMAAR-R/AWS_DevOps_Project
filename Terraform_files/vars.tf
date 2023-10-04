variable "REGION" {
  default = "us-west-2"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-west-2 = "ami-03f65b8614a860c29"
  }
}

variable "VPC" {
  default = "Project-VPC"
}

variable "VPC-CIDR" {
  default = "15.0.0.0/16"
}
variable "PUB-SUB-1" {
  default = "pub-sub1"
}
variable "PUB-SUB-2" {
  default = "pub-sub3"
}
variable "PVT-SUB-1" {
  default = "pvt-sub1"
}
variable "PVT-SUB-2" {
  default = "pvt-sub2"
}
variable "PUB-SUB1-CIDR" {
  default = "15.0.1.0/24"
}
variable "PUB-SUB2-CIDR" {
  default = "15.0.2.0/24"
}
variable "PVT-SUB1-CIDR" {
  default = "15.0.10.0/24"
}
variable "PVT-SUB2-CIDR" {
  default = "15.0.11.0/24"
}

variable "ZONE1" {
  default = "us-west-2a"
}

variable "ZONE2" {
  default = "us-west-2b"
}

variable "ZONE3" {
  default = "us-west-2c"
}

variable "USER" {
  default = "ubuntu"
}
variable "DB-USER" {
  default = "admin"
}
variable "DB-PASS" {
  default = "admin123"
}
variable "DB-NAME" {
  default = "accounts"
}
variable "RM-USER" {
  default = "rabbit"
}
variable "RM-PASS" {
  default = "rabbit1234567890"
}
