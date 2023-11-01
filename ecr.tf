resource "aws_ecr_repository" "cicd-pipeline" {
  name                 = "cicd-pipeline"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Environment = "dev"
    Project     = "CI/CD Pipeline"
  }
}
