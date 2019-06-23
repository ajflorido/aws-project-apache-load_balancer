# aws-project-apache-load-balancer-terraform
The purpose of this repository is to created  three replicas of autoscaling Ubuntu Vms using terraform in AWS free tier an deploy an apache web server using a load balancer checking ELB health internally using differents concepts used by AWS and terraform.

in order to check instances using load balancer configuration we will check Instance_id using amazon meta-data in our user data file.

```  sh
$ instance_id=$(curl -s 169.254.169.254/latest/meta-data/instance-id)
$ echo $instance_id|sudo tee /var/www/html/index.html
```

# Terraform
- Outputs
- Variables
- Interpolation Syntax
- User Data
- Data Sources
- Launch Configuration
- Autoscaling
- Load Balancer

https://www.terraform.io/docs/index.html

# Amazon

- EC2
- AMI
- IAM
- Security Groups
- Elastic Ip
- Auto Scaling
- Load Balancing 

https://docs.aws.amazon.com/

# Commands
 - terraform init  
 - terraform plan
 - terraform apply --auto-approve
 - terraform destroy --force
