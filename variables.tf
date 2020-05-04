variable "aws_region" {
   type        = string
   description = "Main region for aws services"
}

variable "cidr_vpc" {
   type  = string
   description = "CIDR Range for VPC"
   default     = "10.0.0.0/16"
}

variable "cidr_public_subnet1" {
   type  = string
   description = "CIDR Range for public subnet 1"
   default     = "10.0.0.0/18"
}

variable "cidr_public_subnet2" {
   type  = string
   description = "CIDR Range for public subnet 2"
   default     = "10.0.128.0/18"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
}

variable "app_count" {
  description = "Number of docker containers to run"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
}

variable "hosted_zone_name" {
   type        = string
   description = "Hosted zone name"
}

variable "db_port" {
   type        = string
   description = "Port for Postgres RDS Database"
}

variable "db_username" {
   type        = string
   description = "Username for Postgres database"
}

variable "db_password" {
   type        = string
   description = "Password for Postgres database"
}

variable "db_name" {
   type        = string
   description = "Name for Postgres database"
}
