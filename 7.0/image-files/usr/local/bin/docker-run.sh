#!/bin/bash

# This script is run within the php containers on start
# docker-run.sh is available for legacy setups

# Fail on any error
set -o errexit

# Run the command sent as command line arguments
php-fpm
