variable "aws_region" {
	description		= "Region in which AWS resources are created"
	type			= string
	default			= "ap-south-1"
}

variable "instance_type_list" {
	description		= "EC2 Instance Type List"
	type			= list(string)
	default			= ["t2.small", "t2.micro", "t2.medium", "t2.large"]
}

variable "instance_keypair" {
	description		= "AWS EC2 Key Pair which need to be associated to EC2 Instance"
	type			= string
	default			= "terraform-key"
}
