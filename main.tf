provider "aws" {
  region = "us-west-2"
}

module "kinesis_stream_and_firehose" {
  source = "./modules/kinesis_stream_and_firehose"
  stream_name = var.stream_name
  firehose_name = var.firehose_name
  s3_bucket_name = var.s3_bucket_name
}
