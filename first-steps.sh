#!/bin/bash

# Ensure scripts have executable permissions
chmod +x environment.sh software.sh monitoring.sh temp_files.sh

# Call the scripts in the specified order
./environment.sh
./software.sh
./monitoring.sh
./temp_files.sh