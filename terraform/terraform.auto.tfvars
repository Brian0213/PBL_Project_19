region = "eu-west-1"

vpc_cidr = "172.16.0.0/16"

enable_dns_support = "true"

enable_dns_hostnames = "true"

enable_classiclink = "false"

enable_classiclink_dns_support = "false"

preferred_number_of_public_subnets = 2

preferred_number_of_private_subnets = 4

environment = "dev"

ami-web = "ami-07ff7aed7c1c7fcb0"

ami-bastion = "ami-00860453954c6ce6a"

ami-nginx = "ami-04a86f37bfc866503"

ami-sonar = "ami-02c1c9f5b1298e820"

# ami-jfrog = "ami-02c1c9f5b1298e820"

# ami-jenkins = "ami-02c1c9f5b1298e820"

# ami-artifactory = "ami-02c1c9f5b1298e820"

keypair = "pbl-learn"

master-password = "brian1234"

master-username = "brian"

account_no = "451594895880"

tags = {
  Owner-Email     = "olusegunojeyinka@gmail.com"
  Managed-By      = "Terraform"
  Billing-Account = "1234567890"
}