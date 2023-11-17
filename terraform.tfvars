aws_region = "us-east-1"

# These are the values that will most likely be specific to every engineer and require changes.
aws_profile = "ytandu-sessionmanager-poc"
users = {
  "user1" = { name = "yadagiri.tandu1@encora.com", aws_region = "us-east-1" },
  "user2" = { name = "yadagiri.tandu2@encora.com", aws_region = "us-west-2" },
  "user3" = { name = "yadagiri.tandu3@encora.com", aws_region = "eu-west-1" }
}