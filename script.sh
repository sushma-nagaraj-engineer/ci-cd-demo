#!/bin/bash

# Update package manager
sudo yum update -y

# Install Apache HTTP Server
sudo yum install -y httpd

# Start Apache and enable it on boot
sudo systemctl start httpd
sudo systemctl enable httpd

# Create a simple HTML page
echo "<html><h1>Hello from EC2 Apache Web Server!</h1></html>" | sudo tee /var/www/html/index.html

# Open firewall port if using firewalld (Amazon Linux doesn't use it by default)
# sudo firewall-cmd --permanent --add-service=http
# sudo firewall-cmd --reload
