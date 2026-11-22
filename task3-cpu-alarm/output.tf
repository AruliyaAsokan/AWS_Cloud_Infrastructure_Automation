output "instance_id" {
  value = aws_instance.demo.id
}
output "alarm_name" {
  value = aws_cloudwatch_metric_alarm.high_cpu.alarm_name
}