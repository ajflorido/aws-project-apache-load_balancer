
resource "aws_autoscaling_group" "web" {
  name                      = "${var.project_name}-web"
  max_size                  = 3
  min_size                  = 0
  desired_capacity          = 3

  health_check_type = "ELB" 
  health_check_grace_period = 10

  load_balancers = [
     "${aws_elb.web.name}" 
  ]

  launch_configuration      = "${aws_launch_configuration.web.name}"
  vpc_zone_identifier       = [
         "subnet-3059e84a", 
         "subnet-a0a86fec", 
         "subnet-a0a86fec"
  ]

  tag {
    key                 = "Name"
    value               = "${var.project_name}-web-asg"
    propagate_at_launch = true
  }
}
