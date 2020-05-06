resource "aws_ecr_repository" "ecr_repo" {
  name                 = var.ecr_repo_name
  image_tag_mutability = "MUTABLE"
}

resource "null_resource" "push_image_ecr" {
    provisioner "local-exec" {
        command = "aws ecr get-login-password --region ${var.aws_region} | docker login --username AWS --password-stdin ${aws_ecr_repository.ecr_repo.repository_url}"
    }
    provisioner "local-exec" {
        command = "docker build --no-cache -t ${aws_ecr_repository.ecr_repo.name} ${var.docker_file}"
    }
    provisioner "local-exec" {
        command = "docker tag ${aws_ecr_repository.ecr_repo.name}:latest ${aws_ecr_repository.ecr_repo.repository_url}:latest"
    }
    provisioner "local-exec" {
        command = "docker push ${aws_ecr_repository.ecr_repo.repository_url}:latest"
    }

  depends_on = [aws_ecr_repository.ecr_repo]
}
