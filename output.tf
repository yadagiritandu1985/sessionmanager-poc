output "password" {
    value = aws_iam_user_login_profile.newusers.*.encrypted_password
}