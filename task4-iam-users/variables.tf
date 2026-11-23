variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "user_names" {
  type        = list(string)
  description = "IAM users to create"
  default     = ["dev-reader-1", "dev-reader-2"]
}

variable "policy_name" {
  type    = string
  default = "s3-read-only-custom"
}

variable "s3_read_policy" {
  type        = string
  description = "Permission policy document, as JSON"
  default     = <<-POLICY
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Sid": "ListAllBuckets",
          "Effect": "Allow",
          "Action": [
            "s3:ListAllMyBuckets",
            "s3:GetBucketLocation"
          ],
          "Resource": "*"
        },
        {
          "Sid": "ReadObjects",
          "Effect": "Allow",
          "Action": [
            "s3:GetObject",
            "s3:ListBucket"
          ],
          "Resource": "*"
        }
      ]
    }
  POLICY
}