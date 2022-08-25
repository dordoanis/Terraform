 resource "aws_cloudwatch_metric_alarm" "cloudwatch_metric_alarm" {
  alarm_name                = "cloudwatch_metric_alarm_poria"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "cpu_usage_active"
  namespace                 = "AWS/EC2"
  period                    = "60"
  statistic                 = "Average"
  threshold                 = "85"
  alarm_description         = "This metric monitors ec2 cpu_usage_active"
  insufficient_data_actions = [aws_sns_topic.sns.arn]
}

resource "aws_cloudwatch_metric_alarm" "cloudwatch_metric_alarm" {
  alarm_name                = "cloudwatch_metric_alarm_poria"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "disk_used_percent"
  namespace                 = "AWS/EC2"
  period                    = "60"
  statistic                 = "Average"
  threshold                 = "85"
  alarm_description         = "This metric monitors ec2 disk_used_percent"
  insufficient_data_actions = [aws_sns_topic.sns.arn]
}

resource "aws_cloudwatch_metric_alarm" "cloudwatch_metric_alarm" {
  alarm_name                = "cloudwatch_metric_alarm_poria"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "mem_used_percent"
  namespace                 = "AWS/EC2"
  period                    = "60"
  statistic                 = "Average"
  threshold                 = "85"
  alarm_description         = "This metric monitors ec2 mem_used_percent"
  insufficient_data_actions = [aws_sns_topic.sns.arn]
}
