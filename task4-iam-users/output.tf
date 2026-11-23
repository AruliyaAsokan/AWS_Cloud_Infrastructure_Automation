output "user_names" {
  value = [for u in aws_iam_user.readers : u.name]
}

output "user_arns" {
  value = { for k, u in aws_iam_user.readers : k => u.arn }
}

output "policy_arn" {
  value = aws_iam_policy.s3_read.arn
}