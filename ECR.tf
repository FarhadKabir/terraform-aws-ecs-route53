resource "aws_ecr_repository" "ecr_repo" {
  name                 = "app-image"
  image_tag_mutability = "MUTABLE"
}
