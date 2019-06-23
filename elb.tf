  
resource "aws_elb" "web" {
  name               = "${var.project_name}-elb-web"
  subnets = [
         "subnet-3059e84a",
         "subnet-a0a86fec",
         "subnet-a0a86fec"
   ]

  security_groups = [
     "${aws_security_group.allow_http_anywhere.id}"
   ]


  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
   }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 5
    timeout             = 2
    target              = "HTTP:80/"
    interval            = 10
   }


  tags = {
    Name = "${var.project_name}-elb-web"
   }
}

