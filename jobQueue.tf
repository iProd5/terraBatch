resource "aws_batch_job_queue" "job_queue" {
  name                 = "tf-test-batch-job-queue"
  state                = "ENABLED"
  priority             = 10
  compute_environments = ["${aws_batch_compute_environment.compute_environments.arn}"]
}
