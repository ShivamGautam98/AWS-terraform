
# resource "aws_glacier_vault" "my_archive" {
#   name = "MyArchive"


#   access_policy = <<EOF
# {
#     "Version":"2012-10-17",
#     "Statement":[
#        {
#           "Sid": "add-read-only-perm",
#           "Principal": "*",
#           "Effect": "Allow",
#           "Action": [
#              "glacier:InitiateJob",
#              "glacier:GetJobOutput"
#           ],
#           "Resource": "arn:aws:glacier:ap-south-1:335137118959:vaults/MyArchive"
#        }
#     ]
# }
# EOF

#   tags = {
#     Test = "MyArchive"
#   }
# }