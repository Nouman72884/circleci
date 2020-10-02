# Eurus Website
> Deploy Eurus Website,HRM and Jira using terraform.



![](header.png)

## About Project
Above is the architectural diagram to deploy Eurus Website,Hrm and Jira using terraform.In this architecture an ECS Cluster is setup in which two services are running,one is responsible to run Eurus Website and HRM tasks while other is to run Jira in two separate ECS instances spin-up using two different autoscaling groups.There are three target groups for each task.When someone hits the url load balancer redirect the request to the specific target group based on listener rule.Backup of both instances is saved in S3 bucket at specific time.

## Deployment

```sh
terraform workspace new [NAME]
```

```sh
terraform init
```

```sh
terraform plan --var-file=config/dev.tfvars
```

```sh
terraform apply --var-file=config/dev.tfvars
```
