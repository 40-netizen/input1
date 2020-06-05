#!/bin/bash -x
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
for (( i=0; i<4; i++ ))
do
for (( j=0; j<4-i-1; j++ ))
do
if [ ${res[$((j+1))]} -gt ${res[j]} ]
then
temp=${res[$((j+1))]}
res[$((j+1))]=${res[$j]}
res[$j]=$temp
fi
done
done
echo "Descending order of the array"
echo ${res[*]}
echo "End"
