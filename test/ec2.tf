resource "aws_instance" "app" {
  ami                  = "ami-0360c520857e3138f"
  instance_type        = var.instance_type
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
  security_groups      = [aws_security_group.app_sg.id]
  user_data            = file("${path.module}/userdata.sh")
  tags                 = { Name = "app-server" }
}
