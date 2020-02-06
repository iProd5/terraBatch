provider "aws" {
region = "us-east-2"
}


data "aws_batch_compute_environment" "compute_environment" {
 compute_environment_name = "orc-conversion"
}



resource "aws_batch_job_queue" "job_queue" {
  name                 = "tf-batch-job-queue"
  state                = "ENABLED"
  priority             = 10
#   compute_environments = ["${aws_batch_compute_environment.compute_environments.arn}"]
compute_environments = "${data.aws_batch_compute_environment.compute_environment}"
}
