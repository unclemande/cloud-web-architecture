#!/bin/bash
yum update -y
yum install -y httpd

systemctl start httpd
systemctl enable httpd

echo "<h1>Hi, I am Nelson Nkwi, <br> Student of IU with Matric Number: 32201653 <br> Hello World from EC2 - Cloud Project</h1>" > /var/www/html/index.html