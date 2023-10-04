resource "aws_key_pair" "Project-key" {
  key_name   = "Project-keypair"
  public_key = file("Project-key.pub")
}
