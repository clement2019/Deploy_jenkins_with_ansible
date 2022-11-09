resource "aws_instance" "Ansible_master" {
    ami = var.ami_ansible
    instance_type = var.instance_type
    key_name = "devopskey1"
    vpc_security_group_ids = ["${aws_security_group.firewall_ansible.id}"]
  
tags = {
   
    Name = "ansible_master"
   #Name="Ec2_name_instance_${module.shared_module.hamiidenv}"
  }
}
 


 

resource "aws_instance" "jenkins_server" {
    ami = var.ami_jenkins
    instance_type = var.instance_type
    key_name = "devopskey1"
    vpc_security_group_ids = ["${aws_security_group.firewal_jenkins.id}"]
  
tags = {
   
    Name = "jenkins_server"
   #Name="Ec2_name_instance_${module.shared_module.hamiidenv}"
  }
}
 

