Vpc = {
    VpcId = "vpc-01f3ec70ca0b23f51"
    PrivateSubnetId = ["subnet-047911890c1cd2d08","subnet-04ac4fc8d1603d371"]
    PublicSubnetId = ["subnet-0128936db0c7f51dd","subnet-0fa808d50fb03227f"]
    }
AutoScalingGroup = {
    EurusWebsite = {
        InstanceType = "t2.micro"
        MinSize = "1"
        MaxSize = "1"
        DesiredCapacity = "1"
        InstanceVolumeSize = "30"
        HealthCheckGracePeriod = 300
        HealthCheckType         = "EC2"
        DefaultCooldown          = 300
},
    Jira = {
        InstanceType = "t3.medium"
        MinSize = "1"
        MaxSize = "1"
        DesiredCapacity = "1"
        InstanceVolumeSize = "30"
        HealthCheckGracePeriod = 300
        HealthCheckType         = "EC2"
        DefaultCooldown          = 300
}
}


LoadBalancer =  {
    CertificateArn = "arn:aws:acm:us-east-1:853219876644:certificate/72ef6af5-4248-4c7c-83e2-69188210a9c1"
    TargetGroups = {
        Hrm = {
            HealthyThreshold   = 3
            UnhealthyThreshold = 10
            Timeout             = 10
            Interval            = 20
            HealthCheckPath     = "/"
            HealthCheckPort     = "8080"
        },
        EurusWebsite = {
            HealthyThreshold   = 3
            UnhealthyThreshold = 10
            Timeout             = 10
            Interval            = 20
            HealthCheckPath     = "/"
            HealthCheckPort     = "80"
        },
        Jira = {
            HealthyThreshold   = 3
            UnhealthyThreshold = 10
            Timeout             = 10
            Interval            = 20
            HealthCheckPath     = "/"
            HealthCheckPort     = "80"
        }
    }
    Listeners = {
        HostHeaders = {
            EurusWebsite = ["www.eurustechnologies.com","eurustechnologies.com"]
            Hrm = ["hrm.eurustechnologies.com"]
            Jira = ["jira.eurustechnologies.com"]

        }
    }   
}

Ecs = {
    TaskDefinitions = {
        EurusWebsite = {
        Cpu = 1000
        Memory = 900
        },
        Jira = {
            Cpu = ""
            Memory = ""
        }
    },
    Services = {
        EurusWebsite = {
            DesiredCount = 1
            SchedulongStrategy = "REPLICA"
        },
        Jira = {
            DesiredCount = 1
            SchedulongStrategy = "REPLICA"
        }
    }
}

Route53 = {
} 

AwsRegion = "us-east-1"
EnvName = "Eurus"
AMI = "ami-0878e35d09c75f0a1"
KeyPair = "EurusWebSite"
BucketName = "euruswebsite-terraform"





