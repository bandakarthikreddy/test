resource "aws_instance" "myec2vm" {
	description		= "EC2 Instance Creation"
	ami			= data.aws_ami.amazon-ubuntu.id
	instance_type_list	= var.instance_type_list[2]
	key_name		= var.instance_keypair
	vpc_security_group_ids	= [aws_security_group.jenkins-sg.id, aws_security_group.tomcat-sg.id, aws_security_group.sonarqube-sg.id, aws_security_group.nginx-sg.id, aws_security_group.apache-sg.id]
	count			= 2
	tags			= {
		Name		= "Server-${count.index}"
	}
}
