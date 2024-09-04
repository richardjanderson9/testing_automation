#!/bin/bash

current_time=$(date +'%d/%m/%Y @ %H:%M:%S')
hostname=$(hostname)

# Construct the HTML content
html_content="<!DOCTYPE html>
<html>
<body>

<h1>This script has worked!</h1>
<p>Time of change: $current_time</p>
<p>Hostname: $hostname</p>

</body>
</html>
"

# Export to index.html in /var/www/html
echo "$html_content" > /var/www/html/index.html

echo "HTML content exported to /var/www/html/index.html"