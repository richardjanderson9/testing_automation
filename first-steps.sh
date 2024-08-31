#!/bin/bash

# Create the hello-world.txt file in /root
echo "Hello, World!" > /root/hello-world.txt

# Update the default Apache2 index.html file
echo "This script has worked." > /var/www/html/index.html

# Restart the Apache2 service
systemctl restart apache2
