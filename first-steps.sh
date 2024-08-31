#!/bin/bash

# Get the current time 
current_time=$(date +'%d/%m/%y @ %H:%M:%S')

# Create the hello-world.txt file and append the current time
echo "Hello, World!\n$current_time" > /root/hello-world.txt

# Update the default Apache2 index.html file with the current time
echo "The script has worked! (Time of change: $current_time)" > /var/www/html/index.html

# Restart the Apache2 service
systemctl restart apache2

# Pull the "hello-world" Docker image
docker pull hello-world

# Run the "hello-world" container three times
for i in {1..3}; do
    docker run hello-world
done
