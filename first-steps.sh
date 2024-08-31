#!/bin/bash

# Create the hello-world.txt file in /root
echo "Hello, World!" > /root/hello-world.txt

# Get the current time in the desired format
current_time=$(date +'%d/%m/%y @ %H:%M:%S')

# Update the default Apache2 index.html file with dynamic content
echo "The script has worked! (Time of change: $current_time)" > /var/www/html/index.html

# Restart the Apache2 service
systemctl restart apache2
