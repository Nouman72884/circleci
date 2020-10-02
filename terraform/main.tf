
data "template_file" "userdata_eurus" {
  template=templatefile("template/userdata_eurus.sh", {
   EcsClusterName = module.ECSCluster.ECSClusterName
})
}


module "security_group" {
  source = "./modules/security_group"
  EnvName = var.EnvName
  Vpc = var.Vpc
}

module "ecs-role" {
  source = "./modules/ecs_role"
  EnvName = var.EnvName
}

module "ECSCluster" {
  source = "./modules/ecs_cluster"
  EnvName = var.EnvName
 }



module "autoscaling_group_eurus_website" {
  source = "./modules/autoscaling_group"
  Settings = var.AutoScalingGroup.EurusWebsite
  EnvName = var.EnvName
  EC2InstanceProfile = module.ecs-role.EC2InstanceProfile
  KeyPair = var.KeyPair
  AMI = var.AMI
  UserData = data.template_file.userdata_eurus.rendered
  PublicSubnetId = var.Vpc.PublicSubnetId
  InstanceSecurityGroupId = module.security_group.InstanceSecurityGroupId
}

