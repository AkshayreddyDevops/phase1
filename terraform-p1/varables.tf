variable "instance_name" {
  default = {
    frontend:{
      type1 = "t3.micro"
      type2 = "t3.small"
    }
    mongo:{
      type1 = "t3_micro"
      type2 = "t3.small"
    }
  }
  
}