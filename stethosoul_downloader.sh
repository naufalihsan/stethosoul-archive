#!/bin/bash

# Check if exactly two parameters are provided
if [ "$#" -ne 2 ]; then
  echo "Please provide <patientCode> <driveUrl>"
  exit 1
fi

patientCode="$1"

driveUrl="$2"

targetFolder="/Users/naufalihsan/Downloads/stethosoul_clean/controls/$patientCode"

gdown $driveUrl -O $targetFolder --folder
