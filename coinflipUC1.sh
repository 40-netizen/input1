#!/bin/bash -x
echo "Number of turns:"
read n
echo "Maximum throws possible:"
read max
RANDOM=$$
PIPS=2
MAXTHROWS=$max
x=10

throw=0
coinflip=0
heads=0
tails=0

print_result ()
{
echo
echo "heads= $heads"
echo "tails= $tails"
echo
}

update_count()
{
case "$1" in
 0) let "heads += 1";;
 1) let "tails+= 1";;
esac
}
echo
while [ "$throw" -lt "$MAXTHROWS" ]
do
 let "coin1 = RANDOM % $PIPS"
 update_count $coin1
 let "throw += 1"
done
while [ $coin1 -le $n ]
do
print_result
((rolldie++))
done
declare -A Store_Value="$(print_result)"
