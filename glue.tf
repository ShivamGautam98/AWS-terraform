# resource "aws_glue_registry" "test" {
#   registry_name = "example"
# }
# resource "aws_glue_schema" "example" {
#   schema_name       = "example"
#   registry_arn      = aws_glue_registry.test.arn
#   data_format       = "AVRO"
#   compatibility     = "NONE"
#   schema_definition = "{\"type\": \"record\", \"name\": \"r1\", \"fields\": [ {\"name\": \"f1\", \"type\": \"int\"}, {\"name\": \"f2\", \"type\": \"string\"} ]}"
# }