public_key_path = "~/.ssh/pulsar_aws.pub"
region          = "us-west-2"
ami             = "ami-9fa343e7" // RHEL-7.4

instance_types = {
  "broker"              = "i3en.2xlarge"
  "zookeeper-pulsar"    = "t2.small"
  "zookeeper-kafka"     = "t2.small"
  "client-pulsar"       = "c5n.2xlarge"
  "client-kafka"        = "c5n.2xlarge"
  "prometheus-pulsar"   = "t2.large"
  "prometheus-kafka"    = "t2.large"
}

num_instances = {
  "client-pulsar"       = 4
  "client-kafka"        = 4
  "broker"              = 3
  "zookeeper-pulsar"    = 3
  "zookeeper-kafka"     = 3
  "prometheus-pulsar"   = 1
  "prometheus-kafka"    = 1
}
