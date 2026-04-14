resource "aws_launch_template" "web_template" {
  name_prefix   = "web-template-"
  image_id      = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"

  user_data = base64encode(file("user-data.sh"))
}
resource "aws_autoscaling_group" "web_asg" {
  name                = "web-asg"
  desired_capacity    = 2
  max_size            = 3
  min_size            = 1
  vpc_zone_identifier = ["subnet-038ab0a167607c2a9", "subnet-0e0d29c4e0d76da43"]

  launch_template {
    id      = aws_launch_template.web_template.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "WebServer"
    propagate_at_launch = true
  }
  target_group_arns = [aws_lb_target_group.app_tg.arn]

  health_check_type = "EC2"
}