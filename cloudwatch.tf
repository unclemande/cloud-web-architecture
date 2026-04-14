resource "aws_cloudwatch_metric_alarm" "cpu_high" {
  alarm_name          = "high-cpu-usage"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 60
  statistic           = "Average"
  threshold           = 70

  alarm_description = "This alarm triggers if CPU usage exceeds 70%"

  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.web_asg.name
  }
  alarm_actions = [aws_sns_topic.alerts.arn]
}
resource "aws_sns_topic" "alerts" {
  name = "cloud-alerts-topic"
}
resource "aws_sns_topic_subscription" "email_alert" {
  topic_arn = aws_sns_topic.alerts.arn
  protocol  = "email"
  endpoint  = "nelson.nkwi@iu-study.org"
}