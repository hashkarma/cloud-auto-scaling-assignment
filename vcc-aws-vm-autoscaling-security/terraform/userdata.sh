#!/bin/bash
yum update -y
yum install -y httpd
systemctl enable httpd
systemctl start httpd
echo "<h1>VCC Auto Scaling Demo</h1>" > /var/www/html/index.html
echo "<p>Instance ID: $(hostname)</p>" >> /var/www/html/index.html