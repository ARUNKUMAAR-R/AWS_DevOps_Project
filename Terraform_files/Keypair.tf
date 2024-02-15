## Author : ARUNKUMAAR R
## Description : Creating KeyPair in AWS
## Date : 15/02/24
## Language : HCL

resource "aws_key_pair" "Project-key" {
  key_name   = "Project-keypair"
  public_key = file("Project-key.pub")
}
