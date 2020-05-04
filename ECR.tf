resource "aws_ecr_repository" "ecr_repo" {
  name                 = "Demo-Repo"
  image_tag_mutability = "MUTABLE"
}
