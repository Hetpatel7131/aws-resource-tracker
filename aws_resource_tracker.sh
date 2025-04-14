#!/bin/bash
#
# AWS Resource Tracker Script
# 
# This script provides information about various resources in AWS including:
# - Available S3 Buckets
# - IAM Users
# - EC2 Instances
# 
# Author: Your Name
# Date Created: 2025-04-13
# Last Modified: 2025-04-14
#
# Make sure you have the AWS CLI configured with proper credentials
# before running this script.

set -x  # Enables debugging, so commands are printed before execution

# Define the log file with a timestamp
log_file="/mnt/c/het_projects/shell_scripting/logs/aws_resource_tracker_$(date +%F_%H-%M).log"

# 1. Printing available S3 buckets
echo "Fetching available S3 buckets..." >> "$log_file"
aws s3 ls >> "$log_file" 2>&1  # Log output of S3 bucket listing

# 2. Printing available IAM users
echo "Fetching IAM users..." >> "$log_file"
aws iam list-users >> "$log_file" 2>&1  # Log output of IAM user listing

# 3. Printing available EC2 instances
echo "Fetching EC2 instances..." >> "$log_file"
aws ec2 describe-instances >> "$log_file" 2>&1  # Log output of EC2 instance description

# 4. End of script
echo "Script finished at $(date)" >> "$log_file"
