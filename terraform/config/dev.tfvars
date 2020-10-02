Vpc = {
    VpcId = "vpc-a0eeacda"
    PrivateSubnetId = ["subnet-029e8b9226e036546","subnet-083a39f5338b2459f"]
    PublicSubnetId = ["subnet-cfdf1e82","subnet-cfdf1e82"]
    }
AutoScalingGroup = {
    EurusWebsite = {
        InstanceType = "t2.micro"
        MinSize = "1"
        MaxSize = "2"
        DesiredCapacity = "1"
        InstanceVolumeSize = "30"
        HealthCheckGracePeriod = 300
        HealthCheckType         = "EC2"
        DefaultCooldown          = 300
}
}

AwsRegion = "us-east-1"
EnvName = "ECS"
AMI = "ami-0878e35d09c75f0a1"
KeyPair = "nouman_pk"





