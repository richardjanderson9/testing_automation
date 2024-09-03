#!/bin/bash

current_time=$(date +'%d/%m/%Y @ %H:%M:%S')
hostname=$(hostname)

message="This script has worked! 😊 \n
Time of change: $current_time \n
Hostname of Machine: $hostname"

for file in /var/www/html/index.html /root/hello-world.txt; do
    echo -e "${message//\n/<br>}" > "$file"  # Replace \n with <br> for index.html
done