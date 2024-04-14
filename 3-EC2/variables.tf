variable "ec2_instance_names" {
  type = map(string)
  default = {
    instance2 = "1. Slave"
    instance3 = "2. Slave"
    instance4 = "3. Slave"
  }
}