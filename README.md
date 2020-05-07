# Deploy Containerized Application with Terraform
Terraform module that helps deploy a containerized application on AWS ECS (Elastic Container Service), and make it available over Route53 record.
## Example Usage
```
module "terraformecs" {
  source           = "github.com/FarhadKabir/terraform-aws-ecs-route53"
  aws_region       = "eu-west-1"
  ecr_repo_name    = "app_image"
  docker_file      = "path_to_dockerfile_folder"
  hosted_zone_name = "yourdomain.com"
  record_name      = "test"                       //A record to be created in Route53
  app_port         = 80                           //container port that needs to be exposed
  app_count        = 1                            //no of tasks to run
  fargate_cpu      = "256"                        //cpu requirement for ECS Fargate
  fargate_memory   = "512"                        //memory requirement for ECS Fargate
}
```
This will create a docker image *"app_image"* and upload it to ECR repository of same name. and then run a single task and server the application on url *"test.yourdomain.com"*
