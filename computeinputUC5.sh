#!/bin/bash -x
declare -A res
echo "Enter the first number"
read a
echo "Enter the second number"
read b
echo "Enter the third number"
read c
sum1=$(( ( $a + $b ) * $c ))
sum2=$(( ( $a * $b ) + $c ))
sum3=$(( $c + ( $a / $b )))
res[sum1]=$sum1
res[sum2]=$sum2
res[sum3]=$sum3
echo ${res[@]}
