resource "aws_security_group" "firewall_ansible" {
  name        = "security_firewall_ansible"
  description = "public security group for ansible master server"
  #vpc_id      = aws_vpc.mtc_vpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  
}
  tags = {

    Name = "ansible_Firewall"
  }

}

resource "aws_security_group" "firewal_jenkins" {
  name        = "security_firewall_jenkins"
  description = "public security group for jenkins server"
  #vpc_id      = aws_vpc.mtc_vpc.id
  ingress {

    cidr_blocks = ["0.0.0.0/0"]
    description = "http"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"


  }

  ingress {

    cidr_blocks = ["0.0.0.0/0"]
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"


  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  
}
  tags = {

    Name = "jenkins_Firewall"
  }

}
