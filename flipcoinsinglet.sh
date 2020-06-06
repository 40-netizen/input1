#!/bin/bash -x
declare -A result
echo "Flip iteration"
read flip
for((i=0;i<$flip;i++))
do
response=$((RANDOM%2))
if [[ $response-eq 1 ]]
then
if [[ $(result["H"]) -eq 0 ]]
then
result["H"]=1
else
result["H"]=$((${result["H"]}+1))
fi
else
if [[ $(result["T"]) -eq 0 ]]
then
result["T"]=1
else
result["T"]=$((${result["T"]}+1))
fi
done
