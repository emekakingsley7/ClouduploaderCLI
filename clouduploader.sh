#!/bin/bash

# Function to display help message
display_help() {
    echo "Usage: $0 /path/to/file.txt [optional target directory]"
    echo
    echo "   /path/to/file.txt          File path to upload"
    echo "   [optional target directory] Target S3 directory (default is root)"
    echo
    exit 1
}

# Check if correct number of arguments is provided
if [ "$#" -lt 1 ]; then
    display_help
fi

# Parse command-line arguments
file_path=$1
target_directory=$2

# Check if the file exists
if [ ! -f "$file_path" ]; then
    echo "Error: File not found!"
    exit 1
fi

# Define the S3 bucket name (replace with your bucket name)
bucket_name="myemmy"

# Define the target path in S3
if [ -z "$target_directory" ]; then
    target_path="s3://$bucket_name/$(basename "$file_path")"
else
    target_path="s3://$bucket_name/$target_directory/$(basename "$file_path")"
fi

# Upload the file to S3
aws s3 cp "$file_path" "$target_path"
if [ $? -eq 0 ]; then
    echo "File successfully uploaded to $target_path"
else
    echo "Failed to upload file."
    exit 1
fi
