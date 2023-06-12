variable "AWS_PROFILE" {
}

variable "AWS_REGION" {
  default = "eu-central-1"
}

variable "AMIS" {
  type = map(string)
	default = {
		"eu-central-1" = "ami-07151644aeb34558a"
	}
}