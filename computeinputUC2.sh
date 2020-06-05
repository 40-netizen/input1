#!/bin/bash -x
echo "Enter the first number"
read a
echo "Enter the second number"
read b
echo "Enter the third number"
read c
sum=$(( ( $a * $b ) +$c ))
echo $sum
