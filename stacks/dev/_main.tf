// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "website_s3_bucket" {
  bucket_name = join("-", [
    "terramate-dmoe-bucket-123",
    "devl",
  ])
  source = "../../modules/aws-s3-static-website-bucket"
  tags = {
    Terraform   = "true"
    Environment = "devl"
  }
}
module "security_group" {
  ingress_cidr_blocks = [
    "0.0.0.0/0",
  ]
  ingress_rules = [
    "http-80-tcp",
    "all-icmp",
  ]
  sg_name = "terramate-poc-sg-devl"
  source  = "../../modules/aws-security-groups"
}
