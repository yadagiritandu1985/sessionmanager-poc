resource "aws_iam_policy" "devops_nonprod_policy" {
  name        = "encora_devops_nonprod_policy"
  description = "Admin policy for resources in us-east-1 region used by Encora DevOps"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = "*",
        Resource = "*",
        Condition = {
          StringEquals = {
            "aws:RequestedRegion" : "us-east-1"
          }
        }
      },
    ],
  })
}


resource "aws_iam_policy" "devops_prod_policy" {
  name        = "encora_devops_prod_policy"
  description = "Admin policy for resources used by Encora DevOps"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = "*",
        Resource = "*"
      },
    ]
  })
}
