#!/bin/bash

# Script for Simple Interest Calculation

echo "--- Simple Interest Calculator ---"

# 1. Input Principal Amount
echo "Enter the Principal Amount (P):"
read P

# 2. Input Rate of Interest
echo "Enter the Annual Rate of Interest (R in %):"
read R

# 3. Input Time Period
echo "Enter the Time Period in years (T):"
read T

# Check for valid inputs (optional, but good practice)
if ! [[ "$P" =~ ^[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$R" =~ ^[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$T" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
  echo "Error: All inputs must be positive numbers."
  exit 1
fi

# 4. Calculate Simple Interest (SI = P * R * T / 100)
# Using 'bc' for floating-point arithmetic
SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc)

# 5. Calculate Total Amount (A = P + SI)
A=$(echo "scale=2; $P + $SI" | bc)

# 6. Display Results
echo "----------------------------------"
echo "Calculated Simple Interest (SI): $SI"
echo "Total Amount to be Paid (A): $A"
echo "----------------------------------"
