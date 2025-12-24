#!/bin/bash
# Script to calculate simple interest

echo "Enter Principal:"
read P
if ! [[ "$P" =~ ^[0-9]+$ ]]; then
  echo "Error: Principal must be a positive number"
  exit 1
fi

echo "Enter Rate of Interest:"
read R
if ! [[ "$R" =~ ^[0-9]+$ ]]; then
  echo "Error: Rate must be a positive number"
  exit 1
fi

echo "Enter Time (in years):"
read T
if ! [[ "$T" =~ ^[0-9]+$ ]]; then
  echo "Error: Time must be a positive number"
  exit 1
fi

SI=$((P * R * T / 100))
echo "Simple Interest = $SI"
