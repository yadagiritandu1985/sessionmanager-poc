# Assuming you have an users variable defined somewhere, like this:
# variable "users" {
#   type = map(object({
#     name = string
#     // other attributes
#   }))
# }

# User 1 with AWS managed policy for full admin rights
resource "aws_iam_user" "admin_users" {
  for_each = var.users

  name          = each.value.name
  force_destroy = true
}

resource "aws_iam_user_login_profile" "admin_users_login_profile" {
  for_each = aws_iam_user.admin_users

  user                    = each.key
  password_reset_required = true # Force a password reset on first login

  lifecycle {
    ignore_changes = [
      password_reset_required,
    ]
  }
}

resource "aws_iam_user_policy_attachment" "admin_users_policy_attachment" {
  for_each = aws_iam_user.admin_users

  user       = each.key
  policy_arn = aws_iam_policy.devops_prod_policy.arn
}

# Enable MFA for each user
#resource "aws_iam_user_mfa" "admin_users_mfa" {
 # for_each = aws_iam_user.admin_users

 # user = each.key
#}