#!/bin/bash

# Set the path to the Netdata configuration file
config_file="/opt/testing_automation/netdata"

# Read configuration values from the file
version=$(grep "version:" "$config_file" | cut -d' ' -f2)
claim_token=$(grep "claim-token:" "$config_file" | cut -d' ' -f2)
claim_rooms=$(grep "claim-room:" "$config_file" | cut -d' ' -f2)

# Construct the wget command with the dynamic values
wget_command="wget -O /tmp/netdata-kickstart.sh https://get.netdata.cloud/kickstart.sh && sh /tmp/netdata-kickstart.sh --non-interactive --${version} --claim-token ${claim_token} --claim-rooms ${claim_rooms} --claim-url https://app.netdata.cloud"

# Execute the constructed command
eval "$wget_command"