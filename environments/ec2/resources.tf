resource "aws_instance" "cld5_ec2" {
  ami           = data.aws_ami.amz_lns.id
  instance_type = var.instant["dev"]
  subnet_id     = "module.vpc.subnet_id"
  #user_data     = file("${path.module}/httpd.sh")

  #depends_on = [aws_vpc.my_test]

  tags = {
    Name = "D_instance"
  }
}

#resource "aws_eip" "myeip" {
#instance = aws_instance.test_ec2.id
#tags = {
# Name = var.Elasticname
#}
#}