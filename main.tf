
resource "random_string" "mtstring" {
 length = 10
 special = false
 upper = false
  
}


resource "aws_instance" "myinstance" {
  ami           = var.myami
  instance_type = var.myinstance
  region = var.myregion

  tags = {
    Name = "tom-${random_string.mtstring.result}"
  }
}