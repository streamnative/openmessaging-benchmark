terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region  = "${var.region}"
}

provider "random" {
  version = "~> 2.1"
}

variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/pulsar_aws.pub
DESCRIPTION
}

resource "random_id" "hash" {
  byte_length = 8
}

variable "key_name" {
  default     = "benchmark-key"
  description = "Desired name prefix for the AWS key pair"
}

variable "region" {}

variable "ami" {}

variable "profile" {}

variable "instance_types" {
  type = "map"
}

variable "num_instances" {
  type = "map"
}

# Create a VPC to launch our instances into
resource "aws_vpc" "benchmark_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Benchmark-VPC-${random_id.hash.hex}"
  }
}

# Create an internet gateway to give our subnet access to the outside world
resource "aws_internet_gateway" "kafka" {
  vpc_id = "${aws_vpc.benchmark_vpc.id}"
}

# Grant the VPC internet access on its main route table
resource "aws_route" "internet_access" {
  route_table_id         = "${aws_vpc.benchmark_vpc.main_route_table_id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.kafka.id}"
}

# Create a subnet to launch our instances into
resource "aws_subnet" "benchmark_subnet" {
  vpc_id                  = "${aws_vpc.benchmark_vpc.id}"
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-west-2b"
}

# Get public IP of this machine
data "http" "myip" {
  url = "http://ipv4.icanhazip.com"
}

resource "aws_security_group" "benchmark_security_group" {
  name   = "terraform-${random_id.hash.hex}"
  vpc_id = "${aws_vpc.benchmark_vpc.id}"

  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # All ports open within the VPC
  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  # All ports open to this machine
  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["${chomp(data.http.myip.body)}/32"]
  }

  # Prometheus/Dashboard access
  # ingress {
  #   from_port   = 9090
  #   to_port     = 9090
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }
  # ingress {
  #   from_port   = 3000
  #   to_port     = 3000
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Benchmark-Security-Group-${random_id.hash.hex}"
  }
}

resource "aws_key_pair" "auth" {
  key_name   = "${var.key_name}-${random_id.hash.hex}"
  public_key = "${file(var.public_key_path)}"
}

resource "aws_instance" "zookeeper-pulsar" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_types["zookeeper-pulsar"]}"
  key_name               = "${aws_key_pair.auth.id}"
  subnet_id              = "${aws_subnet.benchmark_subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.benchmark_security_group.id}"]
  count                  = "${var.num_instances["zookeeper-pulsar"]}"
  monitoring             = true

  tags = {
    Name = "zk-pulsar-${count.index}"
  }
}

resource "aws_instance" "zookeeper-kafka" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_types["zookeeper-kafka"]}"
  key_name               = "${aws_key_pair.auth.id}"
  subnet_id              = "${aws_subnet.benchmark_subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.benchmark_security_group.id}"]
  count                  = "${var.num_instances["zookeeper-kafka"]}"
  monitoring             = true

  tags = {
    Name = "zk-kafka-${count.index}"
  }
}

resource "aws_instance" "broker" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_types["broker"]}"
  key_name               = "${aws_key_pair.auth.id}"
  subnet_id              = "${aws_subnet.benchmark_subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.benchmark_security_group.id}"]
  count                  = "${var.num_instances["broker"]}"
  monitoring             = true

  tags = {
    Name = "broker-${count.index}"
  }
}

resource "aws_instance" "client-pulsar" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_types["client-pulsar"]}"
  key_name               = "${aws_key_pair.auth.id}"
  subnet_id              = "${aws_subnet.benchmark_subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.benchmark_security_group.id}"]
  count                  = "${var.num_instances["client-pulsar"]}"
  monitoring             = true

  tags = {
    Name = "benchmark-client-pulsar-${count.index}"
  }
}

resource "aws_instance" "client-kafka" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_types["client-kafka"]}"
  key_name               = "${aws_key_pair.auth.id}"
  subnet_id              = "${aws_subnet.benchmark_subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.benchmark_security_group.id}"]
  count                  = "${var.num_instances["client-kafka"]}"
  monitoring             = true

  tags = {
    Name = "benchmark-client-kafka-${count.index}"
  }
}

resource "aws_instance" "prometheus-pulsar" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_types["prometheus-pulsar"]}"
  key_name               = "${aws_key_pair.auth.id}"
  subnet_id              = "${aws_subnet.benchmark_subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.benchmark_security_group.id}"]
  count                  = "${var.num_instances["prometheus-pulsar"]}"

  tags = {
    Name = "prometheus-pulsar-${count.index}"
  }
}

resource "aws_instance" "prometheus-kafka" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_types["prometheus-kafka"]}"
  key_name               = "${aws_key_pair.auth.id}"
  subnet_id              = "${aws_subnet.benchmark_subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.benchmark_security_group.id}"]
  count                  = "${var.num_instances["prometheus-kafka"]}"

  tags = {
    Name = "prometheus-kafka-${count.index}"
  }
}

output "clients-pulsar" {
  value = {
    for instance in aws_instance.client-pulsar :
    instance.public_ip => instance.private_ip
  }
}

output "clients-kafka" {
  value = {
  for instance in aws_instance.client-kafka :
  instance.public_ip => instance.private_ip
  }
}

output "brokers" {
  value = {
    for instance in aws_instance.broker :
    instance.public_ip => instance.private_ip
  }
}

output "zookeeper-pulsar" {
  value = {
    for instance in aws_instance.zookeeper-pulsar :
    instance.public_ip => instance.private_ip
  }
}

output "zookeeper-kafka" {
  value = {
    for instance in aws_instance.zookeeper-kafka :
    instance.public_ip => instance.private_ip
  }
}

output "prometheus-pulsar" {
  value = "${aws_instance.prometheus-pulsar.0.public_ip}"
}

output "prometheus-kafka" {
  value = "${aws_instance.prometheus-kafka.0.public_ip}"
}
