# resource "aws_sns_topic" "user_updates" {
#   name                        = "user-updates-topic.fifo"
#   fifo_topic                  = true
#   content_based_deduplication = true
# }