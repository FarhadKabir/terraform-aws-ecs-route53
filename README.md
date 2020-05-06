# terraform-aws-ecs
Terraform module that helps deploy a containerized application on AWS ECS (Elastic Container Service), and make it available over Route53 record
## Example Usage
```
module "terraformecs" {
  source           = "../terraform-ecs"
  aws_region       = "eu-west-1"
  hosted_zone_name = "ebuildpakistan.com"
  record_name      = "dev-test-api"               //A record no to be created in Route53
  app_port         = 80                           //container port that needs to be exposed
  app_count        = 1                            //no of tasks to run
  fargate_cpu      = "256"                        //cpu requirement for ECS Fargate
  fargate_memory   = "512"                        //memory requirement for ECS Fargate
}
```
