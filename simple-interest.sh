#!/bin/bash
# simple-interest.sh - compute simple interest: SI = (P * R * T) / 100

read -p "Enter Principal: " P
read -p "Enter Annual Rate (in %): " R
read -p "Enter Time (in years): " T

# Use bc for decimal calculation
SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc -l)
printf "Simple Interest = %s\n" "$SI"
