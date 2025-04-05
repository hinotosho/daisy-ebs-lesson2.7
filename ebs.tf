# Create a 1GB EBS Volume in the same AZ as the EC2 instance
resource "aws_ebs_volume" "my_ebs" {
  availability_zone = data.aws_instance.my_instance.availability_zone
  size             = 1  # 1GB storage
}

# Attach the EBS Volume to the EC2 instance
resource "aws_volume_attachment" "ebs_att" {
  device_name  = "/dev/xvdf"  # Change if needed
  volume_id    = aws_ebs_volume.my_ebs.id
  instance_id  = data.aws_instance.my_instance.id
}