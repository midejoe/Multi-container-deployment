######################
###    AZ          ###
######################

data "aws_availability_zones" "available_zones" {}


######################
###    subnet      ###
######################

resource "aws_default_subnet" "default_az1" {
  availability_zone = data.aws_availability_zones.available_zones.names[0]

  tags = {
    Name = "default_subnet"
  }
}