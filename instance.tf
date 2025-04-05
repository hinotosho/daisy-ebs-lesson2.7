# Fetch an existing EC2 instance
data "aws_instance" "my_instance" {
  filter {
    name   = "tag:Name"
    values = ["daisy-tf-ec2-dynamodb-reader-dev"]  # Change this to your actual EC2 instance name
  }
}