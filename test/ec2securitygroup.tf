resource "aws_security_group" "jenkins-sg" {
	description		= "Jenkins Security Group"
	name			= "jenkins-sg"

	ingress	{
		description	= "Allow Port 22"
		from_port	= 22
		to_port		= 22
		protocol	= "tcp"
		cidr_blocks	= ["0.0.0.0/0"]
	}
        ingress {
                description     = "Allow Port 8080"
                from_port       = 8080
                to_port         = 8080
                protocol        = "tcp"
                cidr_blocks     = ["0.0.0.0/0"]
        }
	egress {	
		description	= "Allow all ip and ports outbounds"
		from_port	= 0
		to_port		= 0
		protocol	= "-1"
		cidr_blocks	= ["0.0.0.0/0"]
	}

	tags			= {
		Name		= "Jenkins-sg"
	}

resource "aws_security_group" "tomcat-sg" {
        description             = "Tomcat Security Group"
        name                    = "tomcat-sg"

        ingress {
                description     = "Allow Port 22"
                from_port       = 22
                to_port         = 22
                protocol        = "tcp"
                cidr_blocks     = ["0.0.0.0/0"]
        }
        ingress {
                description     = "Allow Port 8080"
                from_port       = 8080
                to_port         = 8080
                protocol        = "tcp"
                cidr_blocks     = ["0.0.0.0/0"]
        }
        egress {
                description     = "Allow all ip and ports outbounds"
                from_port       = 0
                to_port         = 0
                protocol        = "-1"
                cidr_blocks     = ["0.0.0.0/0"]
        }

        tags                    = {
                Name            = "Tomcat-sg"
        }

resource "aws_security_group" "sonarqube-sg" {
        description             = "SonarQube Security Group"
        name                    = "sonarqube-sg"

        ingress {
                description     = "Allow Port 22"
                from_port       = 22
                to_port         = 22
                protocol        = "tcp"
                cidr_blocks     = ["0.0.0.0/0"]
        }
        ingress {
                description     = "Allow Port 9000"
                from_port       = 9000
                to_port         = 9000
                protocol        = "tcp"
                cidr_blocks     = ["0.0.0.0/0"]
        }
        egress {
                description     = "Allow all ip and ports outbounds"
                from_port       = 0
                to_port         = 0
                protocol        = "-1"
                cidr_blocks     = ["0.0.0.0/0"]
        }

        tags                    = {
                Name            = "SonarQube-sg"
        }

resource "aws_security_group" "nginx-sg" {
        description             = "NGINX Security Group"
        name                    = "nginx-sg"

        ingress {
                description     = "Allow Port 22"
                from_port       = 22
                to_port         = 22
                protocol        = "tcp"
                cidr_blocks     = ["0.0.0.0/0"]
        }
        ingress {
                description     = "Allow Port 80"
                from_port       = 80
                to_port         = 80
                protocol        = "tcp"
                cidr_blocks     = ["0.0.0.0/0"]
        }
        egress {
                description     = "Allow all ip and ports outbounds"
                from_port       = 0
                to_port         = 0
                protocol        = "-1"
                cidr_blocks     = ["0.0.0.0/0"]
        }

        tags                    = {
                Name            = "nginx-sg"
        }

resource "aws_security_group" "apache-sg" {
        description             = "Apache Security Group"
        name                    = "apache-sg"

        ingress {
                description     = "Allow Port 22"
                from_port       = 22
                to_port         = 22
                protocol        = "tcp"
                cidr_blocks     = ["0.0.0.0/0"]
        }
        ingress {
                description     = "Allow Port 80"
                from_port       = 80
                to_port         = 80
                protocol        = "tcp"
                cidr_blocks     = ["0.0.0.0/0"]
        }
        egress {
                description     = "Allow all ip and ports outbounds"
                from_port       = 0
                to_port         = 0
                protocol        = "-1"
                cidr_blocks     = ["0.0.0.0/0"]
        }

        tags                    = {
                Name            = "Jenkins-sg"
        }
