variable "instance_name" {
  default = {
    frontend:{
      inst_type = "t3_micro"
    }
    mongo:{
      inst_type="t3_micro"
    }
  }
  
}