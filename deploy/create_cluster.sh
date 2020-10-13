terraform destroy -force
terraform apply
TF_STATE=./ ansible-playbook  --user ec2-user --inventory-file ~/Downloads/terraform-inventory prepare.yaml
TF_STATE=./ ansible-playbook  --user ec2-user --inventory-file ~/Downloads/terraform-inventory deploy_pulsar.yaml
TF_STATE=./ ansible-playbook  --user ec2-user --inventory-file ~/Downloads/terraform-inventory deploy_kafka.yaml
TF_STATE=./ ansible-playbook  --user ec2-user --inventory-file ~/Downloads/terraform-inventory start_pulsar.yaml
